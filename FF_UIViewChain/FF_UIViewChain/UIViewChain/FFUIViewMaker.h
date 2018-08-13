//
//  FFUIViewMaker.h
//  FF_UIViewChain
//
//  Created by mac on 2018/8/9.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FFUIViewMaker : NSObject

FFUIViewMaker *alloc_view( Class viewClass,UIView *view);

///UIView

- (FFUIViewMaker *(^)(CGRect))frame;
- (FFUIViewMaker *(^)(CGRect))bounds;
- (FFUIViewMaker *(^)(CGPoint))center;
- (FFUIViewMaker *(^)(CGAffineTransform))transform;

- (FFUIViewMaker *(^)(UIColor *))backgroundColor;
- (FFUIViewMaker *(^)(BOOL))userInteractionEnabled;
- (FFUIViewMaker *(^)(NSInteger))tag;

- (FFUIViewMaker *(^)(BOOL))clipsToBounds;
- (FFUIViewMaker *(^)(CGFloat))cornerRadius;
- (FFUIViewMaker *(^)(UIColor *))borderColor;
- (FFUIViewMaker *(^)(CGFloat))borderWidth;

- (FFUIViewMaker *(^)(CGFloat))alpha;
- (FFUIViewMaker *(^)(BOOL))opaque;
- (FFUIViewMaker *(^)(BOOL))hidden;

- (FFUIViewMaker *(^)(UIColor *))tintColor;
- (FFUIViewMaker *(^)(UIViewContentMode))contentMode;

- (FFUIViewMaker *(^)(id target, SEL action))addTapAction;

///UILabel

- (FFUIViewMaker *(^)(NSString *))text;
- (FFUIViewMaker *(^)(UIColor *))textColor;
- (FFUIViewMaker *(^)(NSTextAlignment))textAlignment;
- (FFUIViewMaker *(^)(UIFont *))font;
- (FFUIViewMaker *(^)(UIColor *))shadowColor;
- (FFUIViewMaker *(^)(CGSize))shadowOffset;
- (FFUIViewMaker *(^)(NSLineBreakMode))lineBreakMode;
- (FFUIViewMaker *(^)(NSAttributedString *))attributedText;
- (FFUIViewMaker *(^)(UIColor *))highlightedTextColor;
- (FFUIViewMaker *(^)(BOOL))highlighted;
- (FFUIViewMaker *(^)(BOOL))enabled;
- (FFUIViewMaker *(^)(NSInteger))numberOfLines;




//UIImageView

- (FFUIViewMaker *(^)(UIImage *))image;
- (FFUIViewMaker *(^)(UIImage *))highlightedImage;

- (FFUIViewMaker *(^)(NSArray<UIImage *> *))animationImages;
- (FFUIViewMaker *(^)(NSArray<UIImage *> *))highlightedAnimationImages;

- (FFUIViewMaker *(^)(NSTimeInterval))animationDuration;
- (FFUIViewMaker *(^)(NSInteger))animationRepeatCount;


//UIButton


- (FFUIViewMaker *(^)(UIEdgeInsets))contentEdgeInsets;
- (FFUIViewMaker *(^)(UIEdgeInsets))titleEdgeInsets;
- (FFUIViewMaker *(^)(UIEdgeInsets))imageEdgeInsets;

- (FFUIViewMaker *(^)(NSString *title, UIControlState state))setTitle;
- (FFUIViewMaker *(^)(UIColor *titleColor, UIControlState state))setTitleColor;
- (FFUIViewMaker *(^)(UIColor *titleShadowColor, UIControlState state))setTitleShadowColor;
- (FFUIViewMaker *(^)(NSAttributedString *NSAttributedString, UIControlState state))setAttributedTitle;

- (FFUIViewMaker *(^)(UIImage *image, UIControlState state))setImage;
- (FFUIViewMaker *(^)(UIImage *backgroundImage, UIControlState state))setBackgroundImage;

- (FFUIViewMaker *(^)(id target, SEL action))addTargetAction;



//UITextField
- (FFUIViewMaker *(^)(NSString *))placeholder;
- (FFUIViewMaker *(^)(UITextBorderStyle))borderStyle;
- (FFUIViewMaker *(^)(NSAttributedString *))attributedPlaceholder;
- (FFUIViewMaker *(^)(UITextFieldViewMode))clearButtonMode;
- (FFUIViewMaker *(^)(id<UITextFieldDelegate>))textFieldDelegate;

//UITextView


- (FFUIViewMaker *(^)(BOOL))editable;
- (FFUIViewMaker *(^)(NSRange))selectedRange;
- (FFUIViewMaker *(^)(UIEdgeInsets))textContainerInset;
- (FFUIViewMaker *(^)(id<UITextViewDelegate>))textViewDelegate;






@end
