//
//  ViewController.m
//  FF_UIViewChain
//
//  Created by mac on 2018/8/9.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import "ViewController.h"
#import "FFUIViewMaker.h"
#import "UIView+Chain.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIView *test = [[UIView alloc] init];
    test.viewMaker
    .frame(CGRectMake(100, 100, 200, 200))
    .backgroundColor([UIColor orangeColor])
    .clipsToBounds(YES)
    .cornerRadius(100)
    .borderWidth(2.0)
    .borderColor([UIColor cyanColor])
    .addTapAction(self,@selector(imageViewTap:))
    ;
    
    [self.view addSubview:test];
    
    UILabel *label = [UILabel new];
    label.viewMaker
    .frame(CGRectMake(100, 350, 200, 60))
    .backgroundColor([UIColor yellowColor])
    .text(@"哈哈哈健康法撒旦法很快就爱的色放克拉的设计费")
    .textColor([UIColor redColor])
    .textAlignment(NSTextAlignmentCenter)
    .font([UIFont systemFontOfSize:14])
    .highlightedTextColor([UIColor cyanColor])
    .highlighted(NO)
    .numberOfLines(0)
    .addTapAction(self,@selector(imageViewTap:));
    ;
    
    [self.view addSubview:label];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.viewMaker
    .frame(CGRectMake(100, 450, 200, 30))
    .backgroundColor([UIColor purpleColor])
    .setTitle(@"点我",UIControlStateNormal)
    .font([UIFont systemFontOfSize:12])
    .addTargetAction(self,@selector(btnAction:));
    
    [self.view addSubview:btn];
    
    
    UIImageView *imageView = [UIImageView new];
    imageView.viewMaker
    .frame(CGRectMake(100, 550, 200, 100))
    .contentMode(UIViewContentModeScaleAspectFill)
    .image([UIImage imageNamed:@"test"])
    .addTapAction(self,@selector(imageViewTap:));
    
    [self.view addSubview:imageView];
    
    UITextField *tf = [[UITextField alloc] init];
    tf.viewMaker
    .frame(CGRectMake(20, 660, 350, 30))
    .borderStyle(UITextBorderStyleRoundedRect)
    .textFieldDelegate(self)
    .clearButtonMode(UITextFieldViewModeWhileEditing)
    .placeholder(@"please input some word ...");
    
    [self.view addSubview:tf];
    
}

- (void)btnAction:(UIButton *)sender{
    NSLog(@"------ btnAction --------");
}

-(void)imageViewTap:(UITapGestureRecognizer *)sender{
    NSLog(@"------ 图片被点击了 --------");
    
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"------ textField开始编辑了 --------");
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
