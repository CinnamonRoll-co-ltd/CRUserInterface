//
//  UIView+LayoutHelper.h
//  CRUserInterface
//
//  Created by Ben on 2014/5/9.
//  Copyright (c) 2014年 CinnamonRoll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LayoutHelper)

+(id)createInView:(UIView*)view;


// Layout

-(void)behine:(UIView*)behineView;
-(void)behineInHorizental:(UIView*)behineView;
-(void)behine:(UIView*)behineView top:(CGFloat)top;
-(void)behineInHorizental:(UIView*)behineView left:(CGFloat)left;



@end
