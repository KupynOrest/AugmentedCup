//
//  WelcomeTableViewController.m
//  AugmentedCup
//
//  Created by Tanya on 1/21/17.
//  Copyright © 2017 kupynвkupyn. All rights reserved.
//

#import "WelcomeTableViewController.h"

@interface WelcomeTableViewController ()

@end

@implementation WelcomeTableViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    self.cupNameTextField.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"CupName"];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject:self.cupNameTextField.text forKey:@"CupName"];
}

@end
