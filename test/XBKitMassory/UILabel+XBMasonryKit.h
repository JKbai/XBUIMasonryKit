//
//  UILabel+XBMasonryKit.h
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBKitMasonryTool.h"
@interface UILabel (XBMasonryKit)

/**
 *创建一个Label,设置字体大小
 @param                 fontsize 字体大小
 @return                UILabel
 */
+(instancetype)xb_labelWithFontSize:(CGFloat)fontsize;


/**
 *快速创建一个Label,字体大小,父视图,masonry布局
 
 @param fontsize            字体大小
 @param superView       父视图
 @param constraints     masonry布局
 @return label
 */
+(instancetype)xb_labelWithFontSize:(CGFloat)fontsize
                          textColor:(UIColor *)textColor
                          superView:(UIView *)superView
                        constraints:(XBConstrainMaker)constraints;


/**
 *快速创建一个label,字体大小,文本
 
 @param                 fontsize 字体大小
 @param                 text 文本
 @return                label
 */
+(instancetype)xb_labelWithFontSize:(CGFloat)fontsize
                               text:(NSString *)text;


/**
 *快速创建一个Label,字体大小,文本,父视图,masonry布局
 
 @param                 fontsize 字体大小
 @param                 text 文本
 @param                 superView 父视图
 @param                 constraints masonry布局
 @return                label
 */
+(instancetype)xb_labelWithFontSize:(CGFloat)fontsize
                               text:(NSString *)text
                          superView:(UIView *)superView
                        constraints:(XBConstrainMaker)constraints;


/**
 *快速创建一个Label,字体大小,文本,行数,父视图,masonry布局
 
 @param                 fontsize 字体大小
 @param                 lines 行数
 @param                 text 文本
 @param                 superView 父视图
 @param                 constraints masonry布局
 @return                label
 */
+(instancetype)xb_labelWithFontSize:(CGFloat)fontsize
                              lines:(NSInteger)lines
                               text:(NSString *)text
                          superView:(UIView *)superView
                        constraints:(XBConstrainMaker)constraints;


/**
 *快速创建一个Label,字体大小,文本,字体颜色,行数,父视图,masonry布局
 
 @param                 font 字体UIFont
 @param                 lines 行数
 @param                 text 文本
 @param                 superView 父视图
 @param                 constraints masonry布局
 @return                label
 */
+(instancetype)xb_labelWithFont:(UIFont *)font
                          lines:(NSInteger)lines
                           text:(NSString *)text
                      textColor:(UIColor *)textColor
                      superView:(UIView *)superView
                    constraints:(XBConstrainMaker)constraints;

/**
 *快速创建一个Label,字体大小,文本,字体颜色,行数,父视图,masonry布局
 
 @param                 fontsize 字体大小
 @param                 lines 行数
 @param                 text 文本
 @param                 superView 父视图
 @param                 constraints masonry布局
 @return                label
 */
+(instancetype)xb_labelWithFontSize:(CGFloat)fontsize
                              lines:(NSInteger)lines
                               text:(NSString *)text
                          textColor:(UIColor *)textColor
                          superView:(UIView *)superView
                        constraints:(XBConstrainMaker)constraints;

/**
 *  设置字间距
 */
- (void)setColumnSpace:(CGFloat)columnSpace;

/**
 *  设置行距
 */
- (void)setRowSpace:(CGFloat)rowSpace;

@end
