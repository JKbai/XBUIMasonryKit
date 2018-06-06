//
//  UIView+XBMasonryKit.m
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import "UIView+XBMasonryKit.h"
#import <objc/runtime.h>

static const void *s_xb_tapGestureKey = "s_xb_tapGestureKey";
static const void *s_xb_longGestureKey = "s_xb_longGestureKey";

@implementation UIView (XBMasonryKit)

/**
 * 快速创建一个View，设置背景颜色，布局，点击事件
 
 @param backColor 背景颜色
 @param constraints 布局
 @return 返回一个View
 */
+(instancetype)xb_viewWithBackColor:(UIColor *)backColor
                            supView:(UIView *)supView
                        constraints:(XBConstrainMaker)constraints
{
    return [self xb_viewWithBackColor:backColor supView:supView constraints:constraints onTap:nil];
}

/**
 * 快速创建一个View，设置背景颜色，布局，点击事件
 
 @param backColor 背景颜色
 @param constraints 布局
 @param onTap 点击事件
 @return 返回一个View
 */
+(instancetype)xb_viewWithBackColor:(UIColor *)backColor
                            supView:(UIView *)supView
                        constraints:(XBConstrainMaker)constraints
                              onTap:(XBTapGestureBlock)onTap{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = backColor;
    
    [supView addSubview:view];
    if (supView && constraints) {
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            constraints(make);
        }];
    }
    
    if (onTap) {
        [view xb_addTapGestureWithCallback:onTap];
    }
    
    return view;
    
}


- (UITapGestureRecognizer *)xb_tapGesture {
    return objc_getAssociatedObject(self, s_xb_tapGestureKey);
}

- (UILongPressGestureRecognizer *)xb_longGesure {
    return objc_getAssociatedObject(self, s_xb_longGestureKey);
}

- (void)xb_addTapGestureWithCallback:(XBTapGestureBlock)onTaped {
    self.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.xb_onTaped = onTaped;
    [self addGestureRecognizer:tap];
    
    objc_setAssociatedObject(self,
                             s_xb_tapGestureKey,
                             tap,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)xb_addLongGestureWithCallback:(XBLongGestureBlock)onLongPressed {
    self.userInteractionEnabled = YES;
    
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] init];
    gesture.xb_onLongPressed = onLongPressed;
    [self addGestureRecognizer:gesture];
    
    objc_setAssociatedObject(self,
                             s_xb_longGestureKey,
                             gesture,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
}



@end
