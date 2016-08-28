//
//  SecondViewVC.m
//  NavigationHide
//
//  Created by  wuhiwi on 16/8/28.
//  Copyright © 2016年 wanglibank. All rights reserved.
//

#import "SecondViewVC.h"

@interface SecondViewVC () <UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation SecondViewVC

#pragma mark - lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.scrollView];
    
    
//    //方式一：
//    //仅适用于iOS8.0以上
//    self.navigationController.hidesBarsOnSwipe = YES;
    
    
    //方式二：
    //采用scrollView的代理
    self.scrollView.delegate = self;
}

#pragma mark - getter
-(UIScrollView *)scrollView
{
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        _scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height * 2);
        _scrollView.backgroundColor = [UIColor lightGrayColor];
    }
    return _scrollView;
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //获取手势
    UIPanGestureRecognizer *pan = scrollView.panGestureRecognizer;
    //获取滑动的速度
    CGFloat velocity = [pan velocityInView:scrollView].y;
    if (velocity <- 5) {
        //向上拖动，隐藏导航栏
        [self.navigationController setNavigationBarHidden:YES animated:YES];
    }else if (velocity > 5) {
        //向下拖动，显示导航栏
        [self.navigationController setNavigationBarHidden:NO animated:YES];
    }else if(velocity == 0){
        //停止拖拽
    }
}
@end
