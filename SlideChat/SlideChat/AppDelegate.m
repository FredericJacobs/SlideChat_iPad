//
//  AppDelegate.m
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "SCSync.h"
#import "ASIFormDataRequest.h"

@implementation AppDelegate

static const NSString *kBaseAPI = @"http://radiant-inlet-5299.herokuapp.com/";
static NSString *const kTokenURL = @"login";

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Override point for customization after application launch.
    UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
    UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
    splitViewController.delegate = (id)navigationController.topViewController;
    
    if (![self isLoggedIn]){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome to SlideChat"
                                                        message:nil delegate:self
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
        return false;
    }
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"Username:%@",[[alertView textFieldAtIndex:0] text]);
    NSLog(@"Password:%@",[[alertView textFieldAtIndex:1] text]);
    
    ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:[NSURL URLWithString:@"http://gentle-wildwood-8274.herokuapp.com/api/v1/tokens.json"]];
    [request setPostValue:[[alertView textFieldAtIndex:0] text] forKey:@"email"];
    [request setPostValue:[[alertView textFieldAtIndex:1] text] forKey:@"password"];
    [request setDelegate:self];
    [request startSynchronous];
    NSError *error = [request error];
    if (!error) {
        NSData *responseData = [request responseData];
        NSDictionary* json = [NSJSONSerialization
                              JSONObjectWithData:responseData
                              options:kNilOptions error:&error];
        
        
        NSLog(@"%@",json);
        
        NSString *token = [json objectForKey:@"token"];
        
        if (token != nil) {
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            
            [defaults setObject:token forKey:@"token"];
            [defaults setObject:[[alertView textFieldAtIndex:0] text] forKey:@"username"];
            [defaults synchronize];
            NSLog(@"WORKED !!!!");
        }
        
        else {
            
            token = nil;
            NSLog(@"Failed !");
        }
        
        
    }
    
  
        NSLog(@" %@", [[request error] localizedDescription]);
    
}


- (void)requestFailed:(ASIHTTPRequest *)request
{
    NSLog(@"failed with error: %d %@", [request responseStatusCode], [[request error] localizedDescription]);
    // tell user incorrect username/password
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
