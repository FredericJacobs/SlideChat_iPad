//
//  DetailViewController.h
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>{
    
    
}

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

- (IBAction)joinSession:(id)sender;

@end
