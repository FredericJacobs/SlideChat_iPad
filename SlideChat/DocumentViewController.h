//
//  DocumentViewController.h
//  SlideChat
//
//  Created by Frederic Jacobs on 12/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DocumentViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    IBOutlet UITableView *tableView;
    
}

@property (nonatomic,retain) IBOutlet UITableView *tableView;
@end
