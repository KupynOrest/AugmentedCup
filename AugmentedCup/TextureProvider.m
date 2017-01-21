//
//  TextureProvider.m
//  AugmentedCup
//
//  Created by Tanya on 1/21/17.
//  Copyright © 2017 kupynвkupyn. All rights reserved.
//

#import "TextureProvider.h"
#import <UIKit/UIKit.h>
#import "UIView+ToImage.h"
#import "LabelView.h"

@interface TextureProvider()

@property (nonatomic, strong) NSString *string;
    
@end

@implementation TextureProvider

- (void)setString:(NSString *)string {
    _string = string;
}

- (UIImage *)image {
    
    UIImage *image = [self imageFromString:self.string
                                      size:CGSizeMake(128., 128.)];
    return image;
}

- (UIImage *)imageFromString:(NSString *)string
                        size:(CGSize)size {
    
    UINib *nib = [UINib nibWithNibName:@"LabelView" bundle:nil];
    LabelView *view = (LabelView *)[[nib instantiateWithOwner:nil options:nil] lastObject];
    view.label.text = string;
    view.frame = CGRectMake(0, 0, size.width, size.height);
    [view layoutIfNeeded];
    UIImage *image = [view grabImage];
    
    UIImage *flippedImage = [self flipImage:image];
    
    return flippedImage;
}

- (UIImage *)flipImage:(UIImage *)image
{
    UIGraphicsBeginImageContext(image.size);
    CGContextDrawImage(UIGraphicsGetCurrentContext(),CGRectMake(0.,0., image.size.width, image.size.height),image.CGImage);
    UIImage *i = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return i;
}

@end
