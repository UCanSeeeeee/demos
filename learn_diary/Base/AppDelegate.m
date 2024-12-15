//
//  AppDelegate.m
//  learn_diary
//
//  Created by 王杰 on 2024/11/9.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "CWBaseViewController.h"
#import "PhotosViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[PhotosViewController new]];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
