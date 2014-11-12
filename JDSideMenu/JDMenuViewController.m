//
//  JDMenuViewController.m
//  JDSideMenu
//
//  Created by Markus Emrich on 11.11.13.
//  Copyright (c) 2013 Markus Emrich. All rights reserved.
//

#import "UIViewController+JDSideMenu.h"

#import "JDMenuViewController.h"
#import "JDFViewController.h"
#import "JDSViewController.h"   

@interface JDMenuViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)switchController:(id)sender;
@end

@implementation JDMenuViewController

- (void)viewDidLayoutSubviews;
{
    [super viewDidLayoutSubviews];
    self.scrollView.contentSize = CGRectInset(self.scrollView.bounds, 0, -1).size;
}

- (IBAction)switchController:(id)sender;
{
//    CGFloat randomHue = (arc4random()%256/256.0);
//    UIViewController *viewController = [[UIViewController alloc] init];
//    viewController.view.backgroundColor = [UIColor colorWithHue:randomHue saturation:1.0 brightness:1.0 alpha:1.0];
//    viewController.title = [NSString stringWithFormat: @"Hue: %.2f", randomHue];
//    
//    UIViewController *contentController = [[UINavigationController alloc]
//                                           initWithRootViewController:viewController];
    UIButton *button = (UIButton *) sender;
    
    switch (button.tag) {
        case 0:
        {
            JDFViewController *fvc = [[JDFViewController alloc] init];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:fvc];
            nav.view.backgroundColor = [UIColor yellowColor];
            [self.sideMenuController setContentController:nav animted:YES];
        }
            break;
        case 1:
        {
            JDSViewController *fvc = [[JDSViewController alloc] init];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:fvc];
            [self.sideMenuController setContentController:nav animted:YES];
        }
            break;
        default:
            break;
    }
    
    
    
    
}

@end
