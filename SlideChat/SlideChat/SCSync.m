//
//  SCSync.m
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import "SCSync.h"

@implementation SCSync



+ (id)sharedManager {
    static SCSync *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (void) setToken:(NSString*)_token{
    
    self.token = _token;
    
}
- (void) setUsername:(NSString*)_username{
    self.username = _username;
}

- (NSArray*) getFiles {
    if (files != nil) {
        return files;
    }
    
return @[  ];
}

- (NSString*) username{
    
    return [NSString stringWithString:username];
}
- (NSString*) token{
    
    return [NSString stringWithString:token];
}

- (id)init {
    if (self = [super init]) {
            username = @"Fred";
    }
    return self;
}


@end
