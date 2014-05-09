//
//  UIView+LayoutHelper.m
//  CRUserInterface
//
//  Created by Ben on 2014/5/9.
//  Copyright (c) 2014年 CinnamonRoll. All rights reserved.
//

#import "UIView+LayoutHelper.h"

@implementation UIView (LayoutHelper)

+(id)createInView:(UIView*)view
{
    UIView *newView = [[self alloc] initWithFrame:CGRectZero];
    [view addSubview:newView];
    return newView;
}



@end
