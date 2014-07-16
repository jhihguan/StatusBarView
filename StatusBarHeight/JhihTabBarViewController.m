//
//  JhihTabBarViewController.m
//  StatusBarHeight
//
//  Created by kuanchih on 2014/7/16.
//  Copyright (c) 2014年 Jhicoll. All rights reserved.
//

#import "JhihTabBarViewController.h"

@interface JhihTabBarViewController ()

@property (strong, nonatomic) UITabBarController *tabBarController;

@end

@implementation JhihTabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // initial tabBarController
    _tabBarController = [[UITabBarController alloc] init];
    // get status bar height
    CGRect mainFrame = [[UIScreen mainScreen] bounds];
    CGRect barFrame = [[UIApplication sharedApplication] statusBarFrame];
    CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
    // add 2 temp view
    UIViewController *first1 = [[UIViewController alloc] init];
    first1.title = @"title1";
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:first1];
    UIViewController *first2 = [[UIViewController alloc] init];
    first2.title = @"title2";
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:first2];

    first1.view.backgroundColor = [UIColor brownColor];
    first2.view.backgroundColor = [UIColor blueColor];
    first1.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:0];
    first2.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    
    _tabBarController.viewControllers = [[NSArray alloc] initWithObjects:nav1, nav2, nil];
    _tabBarController.selectedIndex = 0;
    
    [self.view addSubview:_tabBarController.view];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
