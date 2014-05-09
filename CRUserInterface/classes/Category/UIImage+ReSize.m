//
//  UIImage+ReSize.m
//  CRUserInterface
//
//  Created by Ben on 2014/5/9.
//  Copyright (c) 2014年 CinnamonRoll. All rights reserved.
//

#import "UIImage+ReSize.h"

@implementation UIImage (ReSize)

- (UIImage *)imageScaledToQuarter
{
    return [self imageScaledToScale:0.25f withInterpolationQuality:kCGInterpolationHigh];
}

- (UIImage *)imageScaledToHalf
{
    return [self imageScaledToScale:0.5f withInterpolationQuality:kCGInterpolationHigh];
}

- (UIImage *)imageScaledToScale:(CGFloat)scale
{
    return [self imageScaledToScale:scale withInterpolationQuality:kCGInterpolationHigh];
}

- (UIImage *)imageScaledToScale:(CGFloat)scale withInterpolationQuality:(CGInterpolationQuality)quality
{
    UIGraphicsBeginImageContextWithOptions(self.size, YES, scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetInterpolationQuality(context, quality);
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

+ (UIImage*)imageWithImage:(UIImage*)image scaledToScale:(CGFloat)scale
{
    return [UIImage imageWithImage:image scaledToSize:CGSizeMake(image.size.width*scale, image.size.height*scale)];
}

+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize
{
    UIGraphicsBeginImageContext( newSize );
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}


@end
