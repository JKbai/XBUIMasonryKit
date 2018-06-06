//
//  UIWebView+XBMasonryKit.h
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBKitMasonryTool.h"
@interface UIWebView (XBMasonryKit)

/**
 *
 *    Create a web view without layout.
 *
 *    @param delegate    UIWebViewDelegate
 *
 *    @return The instance of UIWebView.
 */
+ (instancetype)xb_webViewWithDelegate:(id)delegate;

/**
 *
 *    Create a web view with a super view and add edges as layout.
 *
 *    @param delegate    UIWebViewDelegate
 *    @param superView    The super view of web view.
 *
 *    @return The instance of UIWebView.
 */
+ (instancetype)xb_webViewWithDelegate:(id)delegate superView:(UIView *)superView;

/**
 *
 *    Create a web view with a super view and add edges as layout.
 *
 *    @param delegate    UIWebViewDelegate
 *    @param superView    The super view of web view.
 *    @param edges            The edges inset.
 *
 *    @return The instance of UIWebView.
 */
+ (instancetype)xb_webViewWithDelegate:(id)delegate
                             superView:(UIView *)superView
                                 edges:(UIEdgeInsets)edges;

/**
 *
 *    Create a web view with a super view and specify layout.
 *
 *    @param delegate    UIWebViewDelegate
 *    @param superView    The super view of web view.
 *    @param constraints    The constraints added to the web view.
 *
 *    @return The instance of UIWebView.
 */
+ (instancetype)xb_webViewWithDelegate:(id)delegate
                             superView:(UIView *)superView
                           constraints:(XBConstrainMaker)constraints;

@end
