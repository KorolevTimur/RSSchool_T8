//
//  AppDelegate.m
//  RSSchool_T8
//
//  Created by admin on 15.07.21.
//

#import "AppDelegate.h"
#import "ArtistVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
        
    UIViewController *artistVC = [[ArtistVC alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:artistVC];
        
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
    return YES;
}




@end
