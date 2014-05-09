//
//  UIImage+Tint.m
//  CRUserInterface
//
//  Created by Ben on 2014/5/9.
//  Copyright (c) 2014年 CinnamonRoll. All rights reserved.
// http://robots.thoughtbot.com/designing-for-ios-blending-modes


#import "UIImage+Tint.h"

@implementation UIImage (Tint)


- (UIImage *)tintedGradientImageWithColor:(UIColor *)tintColor
{
    return [self tintedImageWithColor:tintColor blendingMode:kCGBlendModeOverlay];
}

- (UIImage *)tintedImageWithColor:(UIColor *)tintColor
{
    return [self tintedImageWithColor:tintColor blendingMode:kCGBlendModeDestinationIn];
}

#pragma mark - Private methods

- (UIImage *)tintedImageWithColor:(UIColor *)tintColor blendingMode:(CGBlendMode)blendMode
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);
    [tintColor setFill];
    CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    UIRectFill(bounds);
    [self drawInRect:bounds blendMode:blendMode alpha:1.0f];
    
    UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return tintedImage;
}


@end
