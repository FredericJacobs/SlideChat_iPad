//
//  SCSync.m
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import "SCSync.h"
#import "ASIHTTPRequest.h"

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
    
    ASIHTTPRequest *request = [[ASIHTTPRequest alloc]initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://api.box.com/2.0/folders/351082569"]]];
    
    [request addRequestHeader:@"Authorization" value:@"BoxAuth api_key=x0dcfl3a1vjc56j0sg6cytjfm3dt5r05&auth_token=fkb12xhpz15ktzict2a8j5g4q0p60zmf"];
    
    [request startSynchronous];
        // Use when fetching text data
        NSData *responseData = [request responseData];
        
        NSDictionary* json = [NSJSONSerialization
                              JSONObjectWithData:responseData
                              options:kNilOptions
                              error:nil];
        
        if (request.responseStatusCode == 200){
            files = [[json objectForKey:@"item_collection"] objectForKey:@"entries"];
        }
        else{
            
            //fail silently
        }
        json = nil;
        
    
    
    

    
    
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
        [self getFiles];
    }
    return self;
}


@end
