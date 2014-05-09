//
//  UIImage+Tint.h
//  CRUserInterface
//
//  Created by Ben on 2014/5/9.
//  Copyright (c) 2014年 CinnamonRoll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Tint)


- (UIImage *)tintedGradientImageWithColor:(UIColor *)tintColor;
- (UIImage *)tintedImageWithColor:(UIColor *)tintColor;


@end
