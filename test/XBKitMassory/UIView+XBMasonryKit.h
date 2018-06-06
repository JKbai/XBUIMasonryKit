//
//  UIView+XBMasonryKit.h
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBKitMasonryTool.h"
#import "UIGestureRecognizer+XBActionBlock.h"
@interface UIView (XBMasonryKit)

/**
 *
 *  The tap gesture getter. @see hyb_addTapGestureWithCallback
 */
@property (nonatomic, strong, readonly) UITapGestureRecognizer *xb_tapGesture;

/**
 *
 *    The long press gesture getter, @see hyb_addLongGestureWithCallback
 */
@property (nonatomic, strong, readonly) UILongPressGestureRecognizer *xb_longGesure;



/**
 * 快速创建一个View，设置背景颜色，布局
 
 @param backColor   背景颜色
 @param supView     父视图
 @param constraints 布局
 @return 返回一个View
 */
+(instancetype)xb_viewWithBackColor:(UIColor *)backColor
                            supView:(UIView *)supView
                        constraints:(XBConstrainMaker)constraints;

/**
 * 快速创建一个View，设置背景颜色，布局，点击事件
 
 @param backColor 背景颜色
 @param constraints 布局
 @param supView     父视图
 @param onTap 点击事件
 @return 返回一个View
 */
+(instancetype)xb_viewWithBackColor:(UIColor *)backColor
                            supView:(UIView *)supView
                        constraints:(XBConstrainMaker)constraints
                              onTap:(XBTapGestureBlock)onTap;


/**
 *
 *    Add a tap gesture with callback. It will automatically open userInterface to YES.
 *
 *    @param onTaped    The callback block when taped.
 */
- (void)xb_addTapGestureWithCallback:(XBTapGestureBlock)onTaped;

/**
 *
 *    Add long press gesture with callback. It will automatically open userInterface to YES.
 *
 *    @param onLongPressed    The long press callback when long pressed.
 */
- (void)xb_addLongGestureWithCallback:(XBLongGestureBlock)onLongPressed;

@end