//
//  UITextField+XBMasonryKit.h
//  BYXBaseProject
//
//  Created by 白印潇 on 2018/6/5.
//  Copyright © 2018年 白印潇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBKitMasonryTool.h"
@interface UITextField (XBMasonryKit)


/**
 *
 *    If you want to specify a left margin before cursor, just define this.
 *
 *  @default The default value is 8px.
 */
@property (nonatomic, assign) CGFloat xb_leftMarginOfCursor;

/**
 *
 *    Create a text field with holder, super view and constraints.
 *
 *    @param holder              The place holder.
 *    @param superView        The super view of created text field.
 *    @param constraints    Add constraints to the text field, if superview is nil, it will be ignored.
 *
 *    @return The text field instance.
 */
+ (instancetype)xb_textFieldWithHolder:(NSString *)holder
                             superView:(UIView *)superView
                           constraints:(XBConstrainMaker)constraints;

/**
 *
 *    Create a text field with holder, super view and constraints.
 *
 *    @param holder              The place holder.
 *    @param delegate            The text field delegate.
 *    @param superView        The super view of created text field.
 *    @param constraints    Add constraints to the text field, if superview is nil, it will be ignored.
 *
 *    @return The text field instance.
 */
+ (UITextField *)xb_textFieldWithHolder:(NSString *)holder
                               delegate:(id<UITextFieldDelegate>)delegate
                              superView:(UIView *)superView
                            constraints:(XBConstrainMaker)constraints;

/**
 *
 *    Create a text field with holder, text, super view and constraints.
 *
 *    @param holder              The place holder.
 *    @param text                 The text field default text.
 *    @param superView        The super view of created text field.
 *    @param constraints    Add constraints to the text field, if superview is nil, it will be ignored.
 *
 *    @return The text field instance.
 */
+ (UITextField *)xb_textFieldWithHolder:(NSString *)holder
                                   text:(NSString *)text
                              superView:(UIView *)superView
                            constraints:(XBConstrainMaker)constraints;

/**
 *
 *    Create a text field with holder, text, super view and constraints.
 *
 *    @param holder              The place holder.
 *    @param text                 The text field default text.
 *    @param delegate            The text field delegate.
 *    @param superView        The super view of created text field.
 *    @param constraints    Add constraints to the text field, if superview is nil, it will be ignored.
 *
 *    @return The text field instance.
 */
+ (UITextField *)xb_textFieldWithHolder:(NSString *)holder
                                   text:(NSString *)text
                               delegate:(id<UITextFieldDelegate>)delegate
                              superView:(UIView *)superView
                            constraints:(XBConstrainMaker)constraints;



@end
