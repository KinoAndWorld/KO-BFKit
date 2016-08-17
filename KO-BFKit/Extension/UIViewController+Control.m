//
//  UIViewController+Control.m
//  HomeInns-iOS
//
//  Created by kino on 15/9/6.
//
//

#import "UIViewController+Control.h"

@implementation UIViewController (Control)

- (UIButton *)setNavgationItemWithImage:(UIImage *)image position:(NavgationItemPosition)position{
    UIButton *button;
    
    if (position == NavgationItemPositionLeft) {
        [self.navigationItem setLeftBarButtonItem:({
            button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(0, 0, 40, 40);
            [button setImage:image forState:UIControlStateNormal];
            UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
            item;
        })];
    }else{
        [self.navigationItem setRightBarButtonItem:({
            button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(0, 0, 40, 40);
            [button setImage:image forState:UIControlStateNormal];
            UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
            item;
        })];
    }
    return button;
}

- (UIButton *)setNavgationItemWithTitle:(NSString *)title
                              textColor:(UIColor *)textColor
                               position:(NavgationItemPosition)position{
    UIButton *button;
    
    if (position == NavgationItemPositionLeft) {
        [self.navigationItem setLeftBarButtonItem:({
            button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(0, 0, 90, 50);
            [button setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
            [button setTitle:title forState:UIControlStateNormal];
            [button setTitleColor:textColor forState:UIControlStateNormal];
            UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
            item;
        })];
    }else{
        [self.navigationItem setRightBarButtonItem:({
            button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(0, 0, 90, 50);
            [button setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
            [button setTitle:title forState:UIControlStateNormal];
            [button setTitleColor:textColor forState:UIControlStateNormal];
            UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:button];
            item;
        })];
    }
    return button;
}

- (void)setNavigationBarWithImage:(UIImage *)image{
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
}


- (void)changeNavgationBarAlpha:(CGFloat)alpha{
    if (alpha == 0.f) {
        [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                           forBarMetrics:UIBarMetricsDefault];
    }else{
        [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    }
}

- (void)setStatusBarStyle:(UIStatusBarStyle)style{
    [UIApplication sharedApplication].statusBarStyle = style;
}

@end
