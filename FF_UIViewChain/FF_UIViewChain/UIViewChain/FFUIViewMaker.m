//
//  FFUIViewMaker.m
//  FF_UIViewChain
//
//  Created by mac on 2018/8/9.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import "FFUIViewMaker.h"

@interface FFUIViewMaker ()


@property (nonatomic,strong) Class viewClass;


@property (nonatomic,strong) UIView *view;



@end

@implementation FFUIViewMaker

FFUIViewMaker *alloc_view(Class viewClass,UIView *view) {
    return [[FFUIViewMaker alloc] initWithViewClass:viewClass view:view];
}

- (instancetype)initWithViewClass:(Class)viewClass view:(UIView *)view{
    if (self = [super init]) {
        
        self.viewClass = viewClass;
        self.view = view;

    }
    return self;
}

#pragma mark - <UIView公共属性>

-(FFUIViewMaker *(^)(CGRect))frame{
    return ^FFUIViewMaker * (CGRect frame){
        self.view.frame = frame;
        return self;
    };
}

-(FFUIViewMaker *(^)(CGRect))bounds{
    return ^FFUIViewMaker * (CGRect bounds){
        self.view.bounds = bounds;
        return self;
    };
}

-(FFUIViewMaker *(^)(CGPoint))center{
    return ^FFUIViewMaker * (CGPoint center){
        self.view.center = center;
        return self;
    };
}

-(FFUIViewMaker *(^)(CGAffineTransform))transform{
    return ^FFUIViewMaker * (CGAffineTransform transform){
        self.view.transform = transform;
        return self;
    };
}

-(FFUIViewMaker *(^)(UIColor *))backgroundColor{
    return ^FFUIViewMaker * (UIColor *backgroundColor){
        self.view.backgroundColor = backgroundColor;
        return self;
    };
}

-(FFUIViewMaker *(^)(BOOL))userInteractionEnabled{
    return ^FFUIViewMaker * (BOOL userInteractionEnabled){
        self.view.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

-(FFUIViewMaker *(^)(NSInteger))tag{
    return ^FFUIViewMaker * (NSInteger tag){
        self.view.tag = tag;
        return self;
    };
}

-(FFUIViewMaker *(^)(BOOL))clipsToBounds{
    return ^FFUIViewMaker * (BOOL clipsToBounds){
        self.view.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (FFUIViewMaker *(^)(CGFloat))cornerRadius{
    return ^FFUIViewMaker * (CGFloat cornerRadius){
        self.view.clipsToBounds = YES;
        self.view.layer.cornerRadius = cornerRadius;
        return self;
    };
}

-(FFUIViewMaker *(^)(UIColor *))borderColor{
    return ^FFUIViewMaker * (UIColor *borderColor){
        self.view.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

-(FFUIViewMaker *(^)(CGFloat))borderWidth{
    return ^FFUIViewMaker * (CGFloat borderWidth){
        self.view.layer.borderWidth = borderWidth;
        return self;
    };
}

-(FFUIViewMaker *(^)(BOOL))hidden{
    return ^FFUIViewMaker * (BOOL hidden){
        self.view.hidden = hidden;
        return self;
    };
}

-(FFUIViewMaker *(^)(BOOL))opaque{
    return ^FFUIViewMaker * (BOOL opaque){
        self.view.opaque = opaque;
        return self;
    };
}

- (FFUIViewMaker *(^)(CGFloat))alpha{
    return ^FFUIViewMaker * (CGFloat alpha){
        self.view.alpha = alpha;
        return self;
    };
}

-(FFUIViewMaker *(^)(UIColor *))tintColor{
    return ^FFUIViewMaker * (UIColor *tintColor){
        self.view.tintColor = tintColor;
        return self;
    };
}

-(FFUIViewMaker *(^)(UIViewContentMode))contentMode{
    return ^FFUIViewMaker * (UIViewContentMode contentMode){
        self.view.contentMode = contentMode;
        return self;
    };
    
}

-(FFUIViewMaker *(^)(id, SEL))addTapAction{
    return ^FFUIViewMaker * (id target, SEL action){
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
        self.view.userInteractionEnabled = YES;
        [self.view addGestureRecognizer:tap];
       
        return self;
    };
    
}

#pragma mark - <UILabel>

-(FFUIViewMaker *(^)(NSString *))text{
    return ^FFUIViewMaker * (NSString *text){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.text = text;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.text = text;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextView"]) {
            UITextView *tv = (UITextView *)self.view;
            tv.text = text;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIColor *))textColor{
    return ^FFUIViewMaker * (UIColor *textColor){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.textColor = textColor;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.textColor = textColor;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextView"]) {
            UITextView *tv = (UITextView *)self.view;
            tv.textColor = textColor;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSTextAlignment))textAlignment{
    return ^FFUIViewMaker * (NSTextAlignment textAlignment){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.textAlignment = textAlignment;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.textAlignment = textAlignment;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextView"]) {
            UITextView *tv = (UITextView *)self.view;
            tv.textAlignment = textAlignment;
            
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIFont *))font{
    return ^FFUIViewMaker * (UIFont *font){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.font = font;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.font = font;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextView"]) {
            UITextView *tv = (UITextView *)self.view;
            tv.font = font;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            btn.titleLabel.font = font;
        }
        return self;
    };
}

- (FFUIViewMaker *(^)(UIColor *))shadowColor{
    return ^FFUIViewMaker * (UIColor *shadowColor){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.shadowColor = shadowColor;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(CGSize))shadowOffset{
    return ^FFUIViewMaker * (CGSize shadowOffset){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.shadowOffset = shadowOffset;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSLineBreakMode))lineBreakMode{
    return ^FFUIViewMaker * (NSLineBreakMode lineBreakMode){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.lineBreakMode = lineBreakMode;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSAttributedString *))attributedText{
    return ^FFUIViewMaker * (NSAttributedString *attributedText){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.attributedText = attributedText;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.attributedText = attributedText;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextView"]) {
            UITextView *tv = (UITextView *)self.view;
            tv.attributedText = attributedText;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIColor *))highlightedTextColor{
    return ^FFUIViewMaker * (UIColor *highlightedTextColor){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.highlightedTextColor = highlightedTextColor;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(BOOL))highlighted{
    return ^FFUIViewMaker * (BOOL highlighted){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.highlighted = highlighted;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIImageView"]) {
            UIImageView *imageView = (UIImageView *)self.view;
            imageView.highlighted = highlighted;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(BOOL))enabled{
    return ^FFUIViewMaker * (BOOL enabled){
        
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.enabled = enabled;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.enabled = enabled;
            
        }else if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            btn.enabled = enabled;
        }
        
        return self;
    };
}

-(FFUIViewMaker *(^)(NSInteger))numberOfLines{
    return ^FFUIViewMaker * (NSInteger numberOfLines){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UILabel"]) {
            UILabel *label = (UILabel *)self.view;
            label.numberOfLines = numberOfLines;
        }
        return self;
    };
}

#pragma mark - <UIImageView>

-(FFUIViewMaker *(^)(UIImage *))image{
    return ^FFUIViewMaker * (UIImage *image){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIImageView"]) {
            UIImageView *imageView = (UIImageView *)self.view;
            imageView.image = image;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIImage *))highlightedImage{
    return ^FFUIViewMaker * (UIImage *highlightedImage){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIImageView"]) {
            UIImageView *imageView = (UIImageView *)self.view;
            imageView.highlightedImage = highlightedImage;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSArray<UIImage *> *))animationImages{
    return ^FFUIViewMaker * (NSArray<UIImage *> *animationImages){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIImageView"]) {
            UIImageView *imageView = (UIImageView *)self.view;
            imageView.animationImages = animationImages;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSArray<UIImage *> *))highlightedAnimationImages{
    return ^FFUIViewMaker * (NSArray<UIImage *> *highlightedAnimationImages){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIImageView"]) {
            UIImageView *imageView = (UIImageView *)self.view;
            imageView.highlightedAnimationImages = highlightedAnimationImages;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSTimeInterval))animationDuration{
    return ^FFUIViewMaker * (NSTimeInterval animationDuration){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIImageView"]) {
            UIImageView *imageView = (UIImageView *)self.view;
            imageView.animationDuration = animationDuration;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSInteger))animationRepeatCount{
    return ^FFUIViewMaker * (NSInteger animationRepeatCount){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIImageView"]) {
            UIImageView *imageView = (UIImageView *)self.view;
            imageView.animationRepeatCount = animationRepeatCount;
        }
        return self;
    };
}


#pragma mark - <UIButton>

-(FFUIViewMaker *(^)(UIEdgeInsets))contentEdgeInsets{
    return ^FFUIViewMaker * (UIEdgeInsets contentEdgeInsets){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            btn.contentEdgeInsets = contentEdgeInsets;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIEdgeInsets))titleEdgeInsets{
    return ^FFUIViewMaker * (UIEdgeInsets titleEdgeInsets){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            btn.titleEdgeInsets = titleEdgeInsets;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIEdgeInsets))imageEdgeInsets{
    return ^FFUIViewMaker * (UIEdgeInsets imageEdgeInsets){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            btn.imageEdgeInsets = imageEdgeInsets;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSString *, UIControlState))setTitle{
    return ^FFUIViewMaker * (NSString *title, UIControlState state){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            [btn setTitle:title forState:state];
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIColor *, UIControlState))setTitleColor{
    return ^FFUIViewMaker * (UIColor *titleColor, UIControlState state){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            [btn setTitleColor:titleColor forState:state];
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIColor *, UIControlState))setTitleShadowColor{
    return ^FFUIViewMaker * (UIColor *titleShadowColor, UIControlState state){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            [btn setTitleShadowColor:titleShadowColor forState:state];
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSAttributedString *, UIControlState))setAttributedTitle{
    return ^FFUIViewMaker * (NSAttributedString *attributedTitle, UIControlState state){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            [btn setAttributedTitle:attributedTitle forState:state];
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIImage *, UIControlState))setImage{
    return ^FFUIViewMaker * (UIImage *image, UIControlState state){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            [btn setImage:image forState:state];
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIImage *, UIControlState))setBackgroundImage{
    return ^FFUIViewMaker * (UIImage *backgroundImage, UIControlState state){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            [btn setBackgroundImage:backgroundImage forState:state];
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(id, SEL))addTargetAction{
    return ^FFUIViewMaker * (id target, SEL action){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UIButton"]) {
            UIButton *btn = (UIButton *)self.view;
            [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        }
        return self;
    };
    
}

#pragma mark - <UITextField>

-(FFUIViewMaker *(^)(NSString *))placeholder{
    return ^FFUIViewMaker * (NSString *placeholder){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.placeholder = placeholder;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSAttributedString *))attributedPlaceholder{
    return ^FFUIViewMaker * (NSAttributedString *attributedPlaceholder){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.attributedPlaceholder = attributedPlaceholder;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UITextBorderStyle))borderStyle{
    return ^FFUIViewMaker * (UITextBorderStyle borderStyle){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.borderStyle = borderStyle;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UITextFieldViewMode))clearButtonMode{
    return ^FFUIViewMaker * (UITextFieldViewMode clearButtonMode){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.clearButtonMode = clearButtonMode;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(id<UITextFieldDelegate>))textFieldDelegate{
    
    return ^FFUIViewMaker * (id<UITextFieldDelegate> textFieldDelegate){
        __weak typeof(textFieldDelegate) weakTextFieldDelegate = textFieldDelegate;
        
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextField"]) {
            UITextField *tf = (UITextField *)self.view;
            tf.delegate = weakTextFieldDelegate;
        }
        return self;
    };
}

#pragma mark - <UITextView>

-(FFUIViewMaker *(^)(BOOL))editable{
    return ^FFUIViewMaker * (BOOL editable){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextView"]) {
            UITextView *tv = (UITextView *)self.view;
            tv.editable = editable;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(NSRange))selectedRange{
    return ^FFUIViewMaker * (NSRange selectedRange){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextView"]) {
            UITextView *tv = (UITextView *)self.view;
            tv.selectedRange = selectedRange;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(UIEdgeInsets))textContainerInset{
    return ^FFUIViewMaker * (UIEdgeInsets textContainerInset){
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextView"]) {
            UITextView *tv = (UITextView *)self.view;
            tv.textContainerInset = textContainerInset;
        }
        return self;
    };
}

-(FFUIViewMaker *(^)(id<UITextViewDelegate>))textViewDelegate{
    return ^FFUIViewMaker * (id<UITextViewDelegate> textViewDelegate){
        __weak typeof(textViewDelegate) weakTextViewDelegate = textViewDelegate;
        
        if ([NSStringFromClass(self.viewClass) isEqualToString:@"UITextView"]) {
            UITextView *tv = (UITextView *)self.view;
            tv.delegate = weakTextViewDelegate;
        }
        return self;
    };
}

@end
