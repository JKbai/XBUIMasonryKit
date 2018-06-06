//
//  UIGestureRecognizer+XBActionBlock.h
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBKitMasonryTool.h"
@interface UIGestureRecognizer (XBActionBlock)

/**
 *
 *    Make all gestures support block callback.
 *  This will support all kinds of gestures.
 */
@property (nonatomic, copy) XBGestureBlock xb_onGesture;

/**
 *
 *    Make tap gesture support block callback.
 */
@property (nonatomic, copy) XBTapGestureBlock xb_onTaped;

/**
 *
 *    Make long press gesture support block callback.
 */
@property (nonatomic, copy) XBLongGestureBlock xb_onLongPressed;

@end
