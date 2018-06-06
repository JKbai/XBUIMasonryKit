//
//  XBKitMasonryTool.h
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Masonry/Masonry.h>


/**
 * Button点击事件Block
 *
 */
typedef void(^XBButtonBlock)(id sender);
/**
 * gesture事件Block
 *
 */
typedef void(^XBGestureBlock)(UIGestureRecognizer *gesture);


/**
 * Tap点击事件Block
 *
 */
typedef void(^XBTapGestureBlock)(UITapGestureRecognizer *gesture);

/**
 * Tap长按事件Block
 *
 */
typedef void(^XBLongGestureBlock)(UILongPressGestureRecognizer *gesture);

/**
 * Masonry Block
 *
 */
typedef void(^XBConstrainMaker)(MASConstraintMaker *make);


@interface XBKitMasonryTool : NSObject

@end
