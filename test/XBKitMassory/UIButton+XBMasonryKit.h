//
//  UIButton+XBMasonryKit.h
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBKitMasonryTool.h"

/**
 * Button点击事件Block
 *
 */
typedef void(^XBButtonActionBlock)(id sender);

@interface UIButton (XBMasonryKit)

/**
 *
 *    Make it support block callback of touch up event.
 */
@property (nonatomic, copy) XBButtonActionBlock xb_btnOnTouchUp;


/**
 * 快速创建UIButton，设置：父视图，Marsonry布局
 
 @param touchUp         点击事件
 @return                返回一个button
 */
+(instancetype)xb_buttonWithOnTouchUp:(XBButtonBlock)touchUp;

/**
 * 快速创建UIButton，设置：父视图，Marsonry布局
 
 @param supView         父视图
 @param constaints      Marsonry布局
 @param touchUp         点击事件
 @return                返回一个button
 */
+(instancetype)xb_buttonWithSupView:(UIView *)supView
                        constraints:(XBConstrainMaker)constaints
                            touchUp:(XBButtonBlock)touchUp;


/**
 * 快速创建UIButton，设置：标题，父视图，Marsonry布局
 
 @param title    圆角
 @param superView         父视图
 @param constraints      Marsonry布局
 @param touchUp         点击事件
 @return                返回一个button
 */
+ (instancetype)xb_buttonWithTitle:(NSString *)title
                         superView:(UIView *)superView
                       constraints:(XBConstrainMaker)constraints
                           touchUp:(XBButtonBlock)touchUp;

/**
 * 快速创建UIButton，设置：默认图片，圆角，父视图，Marsonry布局
 
 @param cornerRadius    圆角
 @param supView         父视图
 @param constaints      Marsonry布局
 @param touchUp         点击事件
 @return                返回一个button
 */
+(instancetype)xb_buttonWithNorImage:(id)norImage
                        cornerRadius:(CGFloat)cornerRadius
                             supView:(UIView *)supView
                         constraints:(XBConstrainMaker)constaints
                             touchUp:(XBButtonBlock)touchUp;

/**
 * 快速创建UIButton，设置：标题，标题颜色，背景颜色，字体大小，是否加粗，圆角，父视图，Marsonry布局
 
 @param title           标题
 @param titleColor      标题颜色
 @param backColor       背景颜色
 @param fontSize        字体大小
 @param isBold          是否加粗
 @param cornerRadius    圆角
 @param supView         父视图
 @param constaints      Marsonry布局
 @param touchUp         点击事件
 @return                返回一个button
 */
+(instancetype)xb_buttonWithTitle:(NSString *)title
                       titleColor:(UIColor *)titleColor
                        backColor:(UIColor *)backColor
                         fontSize:(CGFloat)fontSize
                           isBold:(BOOL)isBold
                     cornerRadius:(CGFloat)cornerRadius
                          supView:(UIView *)supView
                      constraints:(XBConstrainMaker)constaints
                          touchUp:(XBButtonBlock)touchUp;


/**
 * 快速创建UIButton，设置：标题，标题颜色，默认图片，选中的图片，背景颜色，字体大小，是否加粗，圆角，父视图，Marsonry布局
 
 @param title           标题
 @param titleColor      标题颜色
 @param norImage        默认图片
 @param selected        选中的图片
 @param backColor       背景颜色
 @param fontSize        字体大小
 @param isBold          是否加粗
 @param cornerRadius    圆角
 @param supView         父视图
 @param constaints      Marsonry布局
 @param touchUp         点击事件
 @return                返回一个button
 */
+(instancetype)xb_buttonWithTitle:(NSString *)title
                       titleColor:(UIColor *)titleColor
                         norImage:(id)norImage
                    selectedImage:(id)selected
                        backColor:(UIColor *)backColor
                         fontSize:(CGFloat)fontSize
                           isBold:(BOOL)isBold
                     cornerRadius:(CGFloat)cornerRadius
                          supView:(UIView *)supView
                      constraints:(XBConstrainMaker)constaints
                          touchUp:(XBButtonBlock)touchUp;

/**
 * 快速创建UIButton，设置：标题，标题颜色，默认图片，选中的图片，背景颜色，字体大小，是否加粗，边框宽度，边框颜色，圆角，父视图，Marsonry布局
 
 @param title           标题
 @param titleColor      标题颜色
 @param norImage        默认图片
 @param selected        选中的图片
 @param backColor       背景颜色
 @param fontSize        字体大小
 @param isBold          是否加粗
 @param borderWidth     边框宽度
 @param borderColor     边框颜色
 @param cornerRadius    圆角
 @param supView         父视图
 @param constaints      Marsonry布局
 @param touchUp         点击事件
 @return                返回一个 button
 */
+(instancetype)xb_buttonWithTitle:(NSString *)title
                       titleColor:(UIColor *)titleColor
                         norImage:(id)norImage
                    selectedImage:(id)selected
                        backColor:(UIColor *)backColor
                         fontSize:(CGFloat)fontSize
                           isBold:(BOOL)isBold
                      borderWidth:(CGFloat)borderWidth
                      borderColor:(UIColor *)borderColor
                     cornerRadius:(CGFloat)cornerRadius
                          supView:(UIView *)supView
                      constraints:(XBConstrainMaker)constaints
                          touchUp:(XBButtonBlock)touchUp;


@end
