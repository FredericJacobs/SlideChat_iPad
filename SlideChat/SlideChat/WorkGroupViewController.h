//
//  WorkGroupViewController.h
//  SlideTime
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//
#import "SCWorkGroup.h"
#import <UIKit/UIKit.h>
#import <Opentok/Opentok.h>

@interface WorkGroupViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, OTSessionDelegate, OTSubscriberDelegate, OTPublisherDelegate>{
    
    IBOutlet UITableView *usersAndFiles;
    NSArray *users;
    NSArray *documents;
    SCWorkGroup *currentWorkGroup;
    OTSession *ot_session;
    OTPublisher*ot_publisher;
    NSString *kSessionIdea;
    NSMutableArray *subscribersFeedViews;
}

- (void)doConnect;
- (void)doPublish;
- (void)showAlert:(NSString*)string;

@property (nonatomic, retain) IBOutlet UITableView *usersAndFiles;
@property (nonatomic, retain) NSString *kSessionIdea;
@end
