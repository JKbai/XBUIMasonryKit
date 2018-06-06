//
//  UIImageView+XBMasonryKit.m
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import "UIImageView+XBMasonryKit.h"

@implementation UIImageView (XBMasonryKit)

+(instancetype)xb_imageView
{
    return [self xb_imageViewWithImage:nil];
}

+(instancetype)xb_imageViewWithImage:(id)image
{
    return [self xb_imageViewWithImage:image SuperView:nil constraints:nil];
}

+(instancetype)xb_imageViewWithImage:(id)image
                           SuperView:(UIView *)superView
                         constraints:(XBConstrainMaker)constraints
{
    return [self xb_imageViewWithImage:image SuperView:superView constraints:constraints imgViewTap:nil];
}

+(instancetype)xb_imageViewWithImage:(id)image
                           SuperView:(UIView *)superView
                         constraints:(XBConstrainMaker)constraints
                          imgViewTap:(XBTapGestureBlock)imgViewTap
{
    return [self xb_imageViewWithImage:image SuperView:superView contentMode:UIViewContentModeScaleAspectFill isClip:YES constraints:constraints imgViewTap:imgViewTap];
}


+(instancetype)xb_imageViewWithImage:(id)image
                           SuperView:(UIView *)superView
                         contentMode:(UIViewContentMode)contentMode
                              isClip:(BOOL)isClip
                         constraints:(XBConstrainMaker)constraints
{
    return [self xb_imageViewWithImage:image SuperView:superView contentMode:contentMode isClip:isClip constraints:constraints imgViewTap:nil];
}

+(instancetype)xb_imageViewWithImage:(id)image
                           SuperView:(UIView *)superView
                         contentMode:(UIViewContentMode)contentMode
                              isClip:(BOOL)isClip
                         constraints:(XBConstrainMaker)constraints
                          imgViewTap:(XBTapGestureBlock)imgViewTap
{
    
    UIImageView *imageView = [[UIImageView alloc]init];
    
    if ([image isMemberOfClass:[NSString class]]) {
        imageView.image = [UIImage imageNamed:image];
    }else if ([image isMemberOfClass:[UIImage class]]){
        imageView.image = image;
    }
    
    
    imageView.contentMode = contentMode;
    [superView addSubview:imageView];
    imageView.clipsToBounds = isClip;
    if (constraints && superView) {
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            constraints(make);
        }];
    }
    
    if (imgViewTap) {
        
    }
    
    return imageView;
}

@end
