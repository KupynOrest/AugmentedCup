//
//  UIView+ToImage.m
//  AugmentedCup
//
//  Created by Tanya on 1/21/17.
//  Copyright © 2017 kupynвkupyn. All rights reserved.
//

#import "UIView+ToImage.h"

@implementation UIView (ToImage)
- (UIImage *)grabImage {
    // Create a "canvas" (image context) to draw in.
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0.0);  // high res
    // Make the CALayer to draw in our "canvas".
    [[self layer] renderInContext: UIGraphicsGetCurrentContext()];
    
    // Fetch an UIImage of our "canvas".
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // Stop the "canvas" from accepting any input.
    UIGraphicsEndImageContext();
    
    // Return the image.
    return image;
}

@end
