//
//  UILabel+XBMasonryKit.m
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import "UILabel+XBMasonryKit.h"

#import <CoreText/CoreText.h>

// 获取屏幕的宽度
#define kScreenWidthLabel ([UIScreen mainScreen].bounds.size.width)
// 不同屏幕尺寸字体适配
#define kScreenWidthRatioLabel  (kScreenWidthLabel / 375.0)
#define AdaptedWidthLabel(x)  ceilf((x) * kScreenWidthRatioLabel)
// 字体适配
#define AdaptedFontSizeLabel(R)     [UIFont systemFontOfSize:AdaptedWidthLabel(R)]

@implementation UILabel (XBMasonryKit)

+(instancetype)xb_labelWithFontSize:(CGFloat)fontSize{
    return [self xb_labelWithFontSize:fontSize text:nil];
}


+(instancetype)xb_labelWithFontSize:(CGFloat)fontSize text:(NSString *)text{
    return [self xb_labelWithFontSize:fontSize text:text superView:nil constraints:nil];
}


+(instancetype)xb_labelWithFontSize:(CGFloat)fontSize
                          textColor:(UIColor *)textColor
                          superView:(UIView *)superView
                        constraints:(XBConstrainMaker)constraints
{
    return [self xb_labelWithFontSize:fontSize lines:1 text:nil textColor:textColor superView:superView constraints:constraints];
}


+(instancetype)xb_labelWithFontSize:(CGFloat)fontSize
                               text:(NSString *)text
                          superView:(UIView *)superView
                        constraints:(XBConstrainMaker)constraints
{
    return [self xb_labelWithFontSize:fontSize lines:1 text:text superView:superView constraints:constraints];
}

+(instancetype)xb_labelWithFontSize:(CGFloat)fontSize
                              lines:(NSInteger)lines
                               text:(NSString *)text
                          superView:(UIView *)superView
                        constraints:(XBConstrainMaker)constraints
{
    return [self xb_labelWithFontSize:fontSize lines:lines text:text textColor:nil superView:superView constraints:constraints];
}

+(instancetype)xb_labelWithFont:(UIFont *)font
                          lines:(NSInteger)lines
                           text:(NSString *)text
                      textColor:(UIColor *)textColor
                      superView:(UIView *)superView
                    constraints:(XBConstrainMaker)constraints
{
    return [self xb_initLabelWithFont:font fontSize:0 lines:lines text:text textColor:textColor superView:superView constraints:constraints];
}

+(instancetype)xb_labelWithFontSize:(CGFloat)fontsize
                              lines:(NSInteger)lines
                               text:(NSString *)text
                          textColor:(UIColor *)textColor
                          superView:(UIView *)superView
                        constraints:(XBConstrainMaker)constraints
{
    return [self xb_initLabelWithFont:nil fontSize:fontsize lines:lines text:text textColor:textColor superView:superView constraints:constraints];
    
}

+(instancetype)xb_initLabelWithFont:(UIFont *)font
                           fontSize:(CGFloat)fontSize
                              lines:(NSInteger)lines
                               text:(NSString *)text
                          textColor:(UIColor *)textColor
                          superView:(UIView *)superView
                        constraints:(XBConstrainMaker)constraints{
    
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    if (fontSize!=0) {
        label.font = AdaptedFontSizeLabel(fontSize);
    }
    
    if (font != nil) {
        label.font = font;
    }
    
    label.textAlignment = NSTextAlignmentLeft;
    if (textColor != nil) {
        label.textColor = textColor;
    }else{
        label.textColor = [UIColor blackColor];
    }
    label.numberOfLines = lines;
    
    if (lines <= 0) {
        label.lineBreakMode = NSLineBreakByWordWrapping;
    } else {
        label.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    
    [superView addSubview:label];
    
    if (superView && constraints) {
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            constraints(make);
        }];
    }
    return label;
}


- (void)setColumnSpace:(CGFloat)columnSpace
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    //调整间距
    [attributedString addAttribute:(__bridge NSString *)kCTKernAttributeName value:@(columnSpace) range:NSMakeRange(0, [attributedString length])];
    self.attributedText = attributedString;
}

- (void)setRowSpace:(CGFloat)rowSpace
{
    self.numberOfLines = 0;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    //调整行距
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = rowSpace;
    paragraphStyle.baseWritingDirection = NSWritingDirectionLeftToRight;
    paragraphStyle.lineBreakMode = NSLineBreakByTruncatingTail;
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.text length])];
    self.attributedText = attributedString;
}

@end
