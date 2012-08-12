//
//  MasterViewController.h
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController<UIWebViewDelegate>{
    
    NSArray *profileElements;
    NSArray *workGroups;
    NSArray *sessionIds;
}

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
