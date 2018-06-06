//
//  UIView+XBMasonryFrame.h
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBKitMasonryTool.h"
@interface UIView (XBMasonryFrame)

/**
 * view.frame.origin.x
 */
@property (nonatomic, assign) CGFloat xb_originX;

/**
 * view.frame.origin.y
 */
@property (nonatomic, assign) CGFloat xb_originY;

/**
 * view.frame.origin
 */
@property (nonatomic, assign) CGPoint xb_origin;

/**
 * view.center.x
 */
@property (nonatomic, assign) CGFloat xb_centerX;

/**
 * view.center.y
 */
@property (nonatomic, assign) CGFloat xb_centerY;

/**
 * view.center
 */
@property (nonatomic, assign) CGPoint xb_center;

/**
 * view.frame.size.width
 */
@property (nonatomic, assign) CGFloat xb_width;

/**
 * view.frame.size.height
 */
@property (nonatomic, assign) CGFloat xb_height;

/**
 * view.frame.size
 */
@property (nonatomic, assign) CGSize  xb_size;

/**
 * view.frame.size.height + view.frame.origin.y
 */
@property (nonatomic, assign) CGFloat xb_bottomY;

/**
 * view.frame.size.width + view.frame.origin.x
 */
@property (nonatomic, assign) CGFloat xb_rightX;

@end
