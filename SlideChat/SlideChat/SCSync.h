//
//  SCSync.h
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCSync : NSObject{
    
    NSString *username;
    NSString *token;
    
}
@property NSString *username;
+ (id)sharedManager;

@end
