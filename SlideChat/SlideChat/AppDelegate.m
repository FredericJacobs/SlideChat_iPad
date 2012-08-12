//
//  AppDelegate.m
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "SCSync.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // Override point for customization after application launch.
    UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
    UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
    splitViewController.delegate = (id)navigationController.topViewController;

    if (![self isLoggedIn]){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome to SlideChat"
                                                        message:nil delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"Login", nil];
        alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
        
        [alert show];
        
    }
    
    else{
        [SCSync sharedManager];
    }
    
    return YES;
    
}

-(BOOL) isLoggedIn {
    
    if ([[[NSUserDefaults standardUserDefaults]objectForKey:@"username"]isEqualToString:@""] || [[NSUserDefaults standardUserDefaults]objectForKey:@"username" ] == nil){
        return false;
    }
    
    else{
        return true;
    }
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        NSLog(@"Username:%@",[[alertView textFieldAtIndex:0] text]);
        NSLog(@"Password:%@",[[alertView textFieldAtIndex:1] text]);
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
