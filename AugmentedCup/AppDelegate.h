//
//  AppDelegate.h
//  AugmentedCup
//
//  Created by Орест on 20.01.17.
//  Copyright © 2017 kupynвkupyn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleGLResourceHandler.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, weak) id<SampleGLResourceHandler> glResourceHandler;

@end

