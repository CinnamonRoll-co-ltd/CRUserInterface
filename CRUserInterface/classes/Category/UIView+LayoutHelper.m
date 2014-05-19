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


// Layout
-(void)behine:(UIView*)behineView
{
    [self behine:behineView top:0];
}

-(void)behineInHorizental:(UIView*)behineView
{
    [self behineInHorizental:behineView left:0];
}

-(void)behine:(UIView*)behineView top:(CGFloat)top;
{
    CGFloat y = CGRectGetMaxY(behineView.frame) + 0.5*CGRectGetHeight(self.frame) + top;
    self.center = CGPointMake(self.center.x, y);
}
-(void)behineInHorizental:(UIView*)behineView left:(CGFloat)left
{
    CGFloat x = CGRectGetMaxX(behineView.frame) + 0.5*CGRectGetWidth(self.frame) + left;
    self.center = CGPointMake(x, self.center.y);
}



@end
