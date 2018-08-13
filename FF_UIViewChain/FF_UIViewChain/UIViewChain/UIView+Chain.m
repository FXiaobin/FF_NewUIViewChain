//
//  UIView+Chain.m
//  FF_UIViewChain
//
//  Created by mac on 2018/8/9.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import "UIView+Chain.h"

@implementation UIView (Chain)

-(FFUIViewMaker *)viewMaker{
    return alloc_view([self class],self);
}

@end
