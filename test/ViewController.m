//
//  ViewController.m
//  test
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import "ViewController.h"
#import "XBUIMasonsyKit.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"asdasdasdasd");
    NSLog(@"新分支");
   UIView *view = [UIView xb_viewWithBackColor:[UIColor redColor] supView:self.view constraints:^(MASConstraintMaker *make) {
        make.centerX.centerY.equalTo(self.view);
        make.width.height.mas_equalTo(50);
    }];
    
    
    UILabel *lable = [UILabel xb_labelWithFontSize:13 textColor:[UIColor greenColor] superView:self.view constraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view.mas_right).offset(20);
        make.centerY.equalTo(view.mas_centerY);
        make.height.mas_equalTo(20);
    }];
    lable.text = @"adsaldaslda";
    
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
