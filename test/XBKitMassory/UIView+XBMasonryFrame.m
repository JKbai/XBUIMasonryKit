//
//  UIView+XBMasonryFrame.m
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import "UIView+XBMasonryFrame.h"

@implementation UIView (XBMasonryFrame)

- (void)setXb_origin:(CGPoint)xb_origin {
    CGRect frame = self.frame;
    frame.origin = xb_origin;
    self.frame = frame;
}

- (CGPoint)xb_origin {
    return self.frame.origin;
}

- (void)setXb_originX:(CGFloat)xb_originX {
    [self setXb_origin:CGPointMake(xb_originX, self.xb_originY)];
}

- (CGFloat)xb_originX {
    return self.xb_origin.x;
}

- (void)setXb_originY:(CGFloat)xb_originY {
    [self setXb_origin:CGPointMake(self.xb_originX, xb_originY)];
}

- (CGFloat)xb_originY {
    return self.xb_origin.y;
}

- (void)setXb_center:(CGPoint)xb_center {
    self.center = xb_center;
}

- (CGPoint)xb_center {
    return self.center;
}

- (void)setXb_centerX:(CGFloat)xb_centerX {
    [self setXb_center:CGPointMake(xb_centerX, self.xb_centerY)];
}

- (CGFloat)xb_centerX {
    return self.xb_center.x;
}

- (void)setXb_centerY:(CGFloat)xb_centerY {
    [self setXb_center:CGPointMake(self.xb_centerX, xb_centerY)];
}

- (CGFloat)xb_centerY {
    return self.xb_center.y;
}

- (void)setXb_size:(CGSize)xb_size {
    CGRect frame = self.frame;
    frame.size = xb_size;
    self.frame = frame;
}

- (CGSize)xb_size {
    return self.frame.size;
}

- (void)setXb_width:(CGFloat)xb_width {
    self.xb_size = CGSizeMake(xb_width, self.xb_height);
}


- (CGFloat)xb_width {
    return self.xb_size.width;
}

- (void)setXb_height:(CGFloat)xb_height {
    self.xb_size = CGSizeMake(self.xb_width, xb_height);
}

- (CGFloat)xb_height {
    return self.xb_size.height;
}

- (CGFloat)xb_bottomY {
    return self.xb_originY + self.xb_height;
}

- (void)setXb_bottomY:(CGFloat)xb_bottomY {
    
    self.xb_originY = xb_bottomY - self.xb_height;
}

- (CGFloat)xb_rightX {
    return self.xb_originX + self.xb_width;
}

- (void)setXb_rightX:(CGFloat)xb_rightX {
    self.xb_originX = xb_rightX - self.xb_width;
}

@end
