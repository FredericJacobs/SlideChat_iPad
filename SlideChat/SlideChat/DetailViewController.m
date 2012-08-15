//
//  DetailViewController.m
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.

//  SlideChat is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// SlideChat Source Code is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details. See <http://www.gnu.org/licenses/>.




#import "DetailViewController.h"
#import "WorkGroupViewController.h"
#define MAIN_BORDER_TOP 32

@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation DetailViewController
@synthesize webview;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }        
}



- (void)configureView
{
    // Update the user interface for the detail item.
    NSLog(@"%@",self.detailDescriptionLabel.text);
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
        
        NSLog(@"%@",self.detailDescriptionLabel.text);
    }
}

- (IBAction)joinSession:(id)sender{
    
    [self joinSessionwithID:self.detailDescriptionLabel.text];
}

- (void) joinSessionwithID:(NSString*)sessionID{
    
    WorkGroupViewController *workGroup = [[WorkGroupViewController alloc]initWithNibName:@"WorkGroupViewController" bundle:nil];
    workGroup.kSessionIdea = self.detailDescriptionLabel.text;
    [self presentModalViewController:workGroup animated:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];

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

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
    
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
    NSLog(@"%@",self.detailDescriptionLabel.text);
}

@end
