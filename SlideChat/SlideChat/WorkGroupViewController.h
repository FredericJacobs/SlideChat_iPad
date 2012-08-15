//
//  WorkGroupViewController.h
//  SlideTime
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Opentok/Opentok.h>

#define kMinimumPinchDelta 100

@interface WorkGroupViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, OTSessionDelegate, OTSubscriberDelegate, OTPublisherDelegate, UIWebViewDelegate, UINavigationBarDelegate>{
    
    IBOutlet UITableView *usersAndFiles;
    NSArray *users;
    NSArray *documents;
    OTSession *ot_session;
    OTPublisher*ot_publisher;
    NSString *kSessionIdea;
    NSMutableArray *subscribersFeedViews;
    CGFloat  initialDistance;
    UIButton *presentation;
    NSInteger mode;
    UIWebView *documentViewer;
    UINavigationBar *bar;
    
}

- (void)doConnect;
- (void)doPublish;
- (void)showAlert:(NSString*)string;
@property (nonatomic, retain) UIWebView *documentViewer;
@property (nonatomic, retain) IBOutlet UITableView *usersAndFiles;
@property (nonatomic, retain) NSString *kSessionIdea;
@end
