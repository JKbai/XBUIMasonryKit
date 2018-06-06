//
//  UIWebView+XBMasonryKit.m
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import "UIWebView+XBMasonryKit.h"

@implementation UIWebView (XBMasonryKit)

+ (instancetype)xb_webViewWithDelegate:(id)delegate {
    return [self xb_webViewWithDelegate:delegate superView:nil];
}

+ (instancetype)xb_webViewWithDelegate:(id)delegate superView:(UIView *)superView {
    return [self xb_webViewWithDelegate:delegate superView:superView edges:UIEdgeInsetsZero];
}

+ (instancetype)xb_webViewWithDelegate:(id)delegate superView:(UIView *)superView edges:(UIEdgeInsets)edges {
    return [self xb_webViewWithDelegate:delegate superView:superView constraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView).insets(edges);
    }];
}

+ (instancetype)xb_webViewWithDelegate:(id)delegate
                             superView:(UIView *)superView
                           constraints:(XBConstrainMaker)constraints {
    UIWebView *webView = [[UIWebView alloc] init];
    
    // 自适应屏幕大小进行缩放
    webView.userInteractionEnabled = YES;
    webView.delegate = delegate;
    webView.scalesPageToFit = YES;
    webView.scrollView.showsVerticalScrollIndicator = NO;
    [superView addSubview:webView];
    
    if (superView) {
        if (constraints) {
            [webView mas_makeConstraints:^(MASConstraintMaker *make) {
                constraints(make);
            }];
        } else {
            [webView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.edges.equalTo(superView);
            }];
        }
    }
    
    return webView;
}

@end
