//
//  TextureProvider.m
//  AugmentedCup
//
//  Created by Tanya on 1/21/17.
//  Copyright © 2017 kupynвkupyn. All rights reserved.
//

#import "TextureProvider.h"

@interface TextureProvider()

@property (nonatomic, strong) NSString *string;
    
@end

@implementation TextureProvider

- (void)setString:(NSString *)string {
    _string = string;
}

- (UIImage *)image {
    NSDictionary *attributes = @{NSFontAttributeName            : [UIFont systemFontOfSize:50],
                                 NSForegroundColorAttributeName : [UIColor blueColor],
                                 NSBackgroundColorAttributeName : [UIColor clearColor]};
    
    UIImage *image = [self imageFromString:self.string attributes:attributes
                                      size:CGSizeMake(128., 128.)];
    return image;
}

- (UIImage *)imageFromString:(NSString *)string attributes:(NSDictionary *)attributes size:(CGSize)size
{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    [string drawInRect:CGRectMake(0, 0, size.width, size.height) withAttributes:attributes];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
