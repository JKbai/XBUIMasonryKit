//
//  UIImageView+XBMasonryKit.h
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBKitMasonryTool.h"
@interface UIImageView (XBMasonryKit)

+(instancetype)xb_imageView;

+(instancetype)xb_imageViewWithImage:(id)image;

+(instancetype)xb_imageViewWithImage:(id)image
                           SuperView:(UIView *)superView
                         constraints:(XBConstrainMaker)constraints;

+(instancetype)xb_imageViewWithImage:(id)image
                           SuperView:(UIView *)superView
                         constraints:(XBConstrainMaker)constraints
                          imgViewTap:(XBTapGestureBlock)imgViewTap;


+(instancetype)xb_imageViewWithImage:(id)image
                           SuperView:(UIView *)superView
                         contentMode:(UIViewContentMode)contentMode
                              isClip:(BOOL)isClip
                         constraints:(XBConstrainMaker)constraints;

+(instancetype)xb_imageViewWithImage:(id)image
                           SuperView:(UIView *)superView
                         contentMode:(UIViewContentMode)contentMode
                              isClip:(BOOL)isClip
                         constraints:(XBConstrainMaker)constraints
                          imgViewTap:(XBTapGestureBlock)imgViewTap;

@end
