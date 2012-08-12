//
//  MasterViewController.m
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@interface MasterViewController () {

}
@end

@implementation MasterViewController

- (void)awakeFromNib
{
    
    profileElements = @[ @"Notifications", @"Settings", @"Sign Out" ];
    workGroups = @[ @"#webapp", @"#iphone", @"#android", @"#support",@"#explore"];
    sessionIds = @[ @"1_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxNjo1MyBQRFQgMjAxMn4wLjk4MzYxNTQ2fg", @"1_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxNzowOCBQRFQgMjAxMn4wLjkwOTEyMTMzfg", @"1_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxNzozOCBQRFQgMjAxMn4wLjg3OTQ3MjJ-", @"2_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxNzo1NCBQRFQgMjAxMn4wLjM4NzEzMTkzfg", @"2_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxODowNiBQRFQgMjAxMn4wLjQzNTQ0NDY1fg"];
    
    self.clearsSelectionOnViewWillAppear = NO;
    self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    self.detailViewController.webview.delegate = self;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if (section == 0) {
        return @"WorkGroups";
    }
    
    if (section == 1) {
        return @"Private Sessions";
    }
    
    if (section ==2) {
        return @"Profile";
    }
    
    return 0 ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return [workGroups count];
    }
    
    if (section == 1) {
        return 0;
    }
    
    if (section == 2) {
        return [profileElements count];
    }
    
    return 0;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

    if (indexPath.section == 0) {
        cell.textLabel.text = [workGroups objectAtIndex:indexPath.row];
    }
    
    if (indexPath.section == 2) {
        cell.textLabel.text = [profileElements objectAtIndex:indexPath.row];
    }
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        self.detailViewController.detailDescriptionLabel.text = [sessionIds objectAtIndex:indexPath.row];
        if ([self.detailViewController.detailDescriptionLabel.text isEqualToString:@"1_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxNjo1MyBQRFQgMjAxMn4wLjk4MzYxNTQ2fg"]) {
            
            NSString *urlAddress = @"http://gentle-wildwood-8274.herokuapp.com/rooms/50276675256da40002000006/minimal";
            
            //Create a URL object.
            NSURL *url = [NSURL URLWithString:urlAddress];
            
            //URL Requst Object
            NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
            
            //Load the request in the UIWebView.
            [self.detailViewController.webview loadRequest:requestObj];
            
        }
        else if ([self.detailViewController.detailDescriptionLabel.text isEqualToString:@"1_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxNzowOCBQRFQgMjAxMn4wLjkwOTEyMTMzfg"]){
            
            NSString *urlAddress = @"http://gentle-wildwood-8274.herokuapp.com/rooms/50276684256da40002000008/minimal";
            
            //Create a URL object.
            NSURL *url = [NSURL URLWithString:urlAddress];
            
            //URL Requst Object
            NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
            
            //Load the request in the UIWebView.
            [self.detailViewController.webview loadRequest:requestObj];
            
        }
        
        else if ([self.detailViewController.detailDescriptionLabel.text isEqualToString:@"1_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxNzozOCBQRFQgMjAxMn4wLjg3OTQ3MjJ-"]){
            
            NSString *urlAddress = @"http://gentle-wildwood-8274.herokuapp.com/rooms/502766a2256da4000200000a/minimal";
            
            //Create a URL object.
            NSURL *url = [NSURL URLWithString:urlAddress];
            
            //URL Requst Object
            NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
            
            //Load the request in the UIWebView.
            [self.detailViewController.webview loadRequest:requestObj];
            
        }
        
        else if([self.detailViewController.detailDescriptionLabel.text isEqualToString:@"2_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxNzo1NCBQRFQgMjAxMn4wLjM4NzEzMTkzfg"]){
            
            NSString *urlAddress = @"http://gentle-wildwood-8274.herokuapp.com/rooms/502766b2256da4000200000c/minimal";
            
            //Create a URL object.
            NSURL *url = [NSURL URLWithString:urlAddress];
            
            //URL Requst Object
            NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
            
            //Load the request in the UIWebView.
            [self.detailViewController.webview loadRequest:requestObj];
        }
        
        else if([self.detailViewController.detailDescriptionLabel.text isEqualToString:@"2_MX4xNjE3ODgxMX5-U3VuIEF1ZyAxMiAwMToxODowNiBQRFQgMjAxMn4wLjQzNTQ0NDY1fg"]){
            
            NSString *urlAddress = @"http://gentle-wildwood-8274.herokuapp.com/rooms/502766be256da4000200000e/minimal";
            
            //Create a URL object.
            NSURL *url = [NSURL URLWithString:urlAddress];
            
            //URL Requst Object
            NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
            
            //Load the request in the UIWebView.
            [self.detailViewController.webview loadRequest:requestObj];
        }

    }

    
    
}

@end
