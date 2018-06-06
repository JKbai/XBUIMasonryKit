//
//  UITableView+XBMasonryKit.m
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import "UITableView+XBMasonryKit.h"

@implementation UITableView (XBMasonryKit)

+ (instancetype)xb_tableViewWithSuperview:(UIView *)superView {
    return [self xb_tableViewWithSuperview:superView delegate:nil];
}

+ (instancetype)xb_tableViewWithSuperview:(UIView *)superView
                              constraints:(XBConstrainMaker)constraints {
    return [self xb_tableViewWithSuperview:superView delegate:nil constraints:constraints];
}

+ (instancetype)xb_tableViewWithSuperview:(UIView *)superView delegate:(id)delegate {
    return [self xb_tableViewWithSuperview:superView
                                  delegate:delegate
                               constraints:^(MASConstraintMaker *make) {
                                   if (superView) {
                                       make.edges.mas_equalTo(superView);
                                   }
                               }];
}

+ (instancetype)xb_tableViewWithSuperview:(UIView *)superView
                                 delegate:(id)delegate
                              constraints:(XBConstrainMaker)constraints {
    return [self xb_tableViewWithSuperview:superView
                                  delegate:delegate
                                     style:UITableViewStylePlain
                               constraints:constraints];
}

+ (instancetype)xb_tableViewWithSuperview:(UIView *)superView
                                 delegate:(id)delegate
                                    style:(UITableViewStyle)style
                              constraints:(XBConstrainMaker)constraints {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    tableView.delegate = delegate;
    tableView.dataSource = delegate;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [superView addSubview:tableView];
    
    if (superView && constraints) {
        [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            constraints(make);
        }];
    }
    
    return tableView;
}


@end
