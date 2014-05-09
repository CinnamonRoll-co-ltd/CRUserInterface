//
//  UIImage+ReSize.h
//  CRUserInterface
//
//  Created by Ben on 2014/5/9.
//  Copyright (c) 2014年 CinnamonRoll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ReSize)

- (UIImage *)imageScaledToQuarter;
- (UIImage *)imageScaledToHalf;
- (UIImage *)imageScaledToScale:(CGFloat)scale;
- (UIImage *)imageScaledToScale:(CGFloat)scale
       withInterpolationQuality:(CGInterpolationQuality)quality;

+ (UIImage*)imageWithImage:(UIImage*)image scaledToScale:(CGFloat)scale;
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;


@end
