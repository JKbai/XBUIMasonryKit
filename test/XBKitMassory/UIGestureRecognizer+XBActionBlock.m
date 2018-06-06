//
//  UIGestureRecognizer+XBActionBlock.m
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import "UIGestureRecognizer+XBActionBlock.h"
#import <objc/runtime.h>
static const void *s_xb_gestureKey = "s_xb_gestureKey";
static const void *s_xb_tap_gestureKey = "s_xb_tap_gestureKey";
static const void *s_xb_long_gestureKey = "s_xb_long_gestureKey";

@implementation UIGestureRecognizer (XBActionBlock)

- (XBGestureBlock)xb_onGesture {
    return objc_getAssociatedObject(self, s_xb_gestureKey);
}

- (void)setXb_onGesture:(XBGestureBlock)xb_onGesture {
    objc_setAssociatedObject(self,
                             s_xb_gestureKey,
                             xb_onGesture,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self removeTarget:self action:@selector(xb_private_onGesture:)];
    
    if (xb_onGesture) {
        [self addTarget:self action:@selector(xb_private_onGesture:)];
    }
}

- (XBTapGestureBlock)xb_onTaped {
    return objc_getAssociatedObject(self, s_xb_tap_gestureKey);
}

- (void)setXb_onTaped:(XBTapGestureBlock)xb_onTaped {
    objc_setAssociatedObject(self,
                             s_xb_tap_gestureKey,
                             xb_onTaped,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self removeTarget:self action:@selector(xb_private_onTaped:)];
    
    if (xb_onTaped) {
        [self addTarget:self action:@selector(xb_private_onTaped:)];
    }
}

- (XBLongGestureBlock)xb_onLongPressed {
    return objc_getAssociatedObject(self, s_xb_long_gestureKey);
}

- (void)setXb_onLongPressed:(XBLongGestureBlock)xb_onLongPressed {
    objc_setAssociatedObject(self,
                             s_xb_long_gestureKey,
                             xb_onLongPressed,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self removeTarget:self action:@selector(xb_private_onLongPressed:)];
    
    if (xb_onLongPressed) {
        [self addTarget:self action:@selector(xb_private_onLongPressed:)];
    }
}

#pragma mark - Private
- (void)xb_private_onGesture:(UIGestureRecognizer *)sender {
    XBGestureBlock block = [self xb_onGesture];
    
    if (block) {
        block(sender);
    }
}

- (void)xb_private_onTaped:(UITapGestureRecognizer *)sender {
    XBTapGestureBlock block = [self xb_onTaped];
    
    if (block) {
        block(sender);
    }
}

- (void)xb_private_onLongPressed:(UILongPressGestureRecognizer *)sender {
    XBLongGestureBlock block = [self xb_onLongPressed];
    
    if (block) {
        block(sender);
    }
}

@end
