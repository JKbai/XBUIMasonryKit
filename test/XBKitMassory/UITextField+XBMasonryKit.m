//
//  UITextField+XBMasonryKit.m
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import "UITextField+XBMasonryKit.h"
#import <objc/runtime.h>
#import "UIView+XBMasonryFrame.h"
static const void *s_leftMarginOfCursorKey = "s_leftMarginOfCursor";
@implementation UITextField (XBMasonryKit)


- (CGFloat)xb_leftMarginOfCursor {
    
    NSNumber *number = objc_getAssociatedObject(self, s_leftMarginOfCursorKey);
    
    if ([number respondsToSelector:@selector(floatValue)]) {
        return [number floatValue];
    }
    
    return 8.0;
}



- (void)setXb_leftMarginOfCursor:(CGFloat)xb_leftMarginOfCursor {
    objc_setAssociatedObject(self,
                             s_leftMarginOfCursorKey,
                             @(xb_leftMarginOfCursor),
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    if (self.leftView) {
        self.leftView.xb_width = xb_leftMarginOfCursor;
    }
}

+ (instancetype)xb_textFieldWithHolder:(NSString *)holder
                             superView:(UIView *)superView
                           constraints:(XBConstrainMaker)constraints {
    return [self xb_textFieldWithHolder:holder
                                   text:nil
                              superView:superView
                            constraints:constraints];
}

+ (UITextField *)xb_textFieldWithHolder:(NSString *)holder
                                   text:(NSString *)text
                              superView:(UIView *)superView
                            constraints:(XBConstrainMaker)constraints {
    return [self xb_textFieldWithHolder:holder
                                   text:text
                               delegate:nil
                              superView:superView
                            constraints:constraints];
}

+ (UITextField *)xb_textFieldWithHolder:(NSString *)holder
                               delegate:(id<UITextFieldDelegate>)delegate
                              superView:(UIView *)superView
                            constraints:(XBConstrainMaker)constraints {
    return [self xb_textFieldWithHolder:holder
                                   text:nil
                               delegate:delegate
                              superView:superView
                            constraints:constraints];
}

+ (UITextField *)xb_textFieldWithHolder:(NSString *)holder
                                   text:(NSString *)text
                               delegate:(id<UITextFieldDelegate>)delegate
                              superView:(UIView *)superView
                            constraints:(XBConstrainMaker)constraints {
    UITextField *textField = [[UITextField alloc] init];
    textField.borderStyle = UITextBorderStyleNone;
    textField.leftView = [[UIView alloc] init];
    textField.leftView.backgroundColor = [UIColor clearColor];
    textField.leftView.xb_width = textField.xb_leftMarginOfCursor;
    textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    textField.spellCheckingType = UITextSpellCheckingTypeNo;
    textField.delegate = delegate;
    [superView addSubview:textField];
    
    textField.placeholder = holder;
    textField.text = text;
    
    if (superView && constraints) {
        [textField mas_makeConstraints:^(MASConstraintMaker *make) {
            constraints(make);
        }];
    }
    
    return textField;
}

@end
