//
//  SCSync.m
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
    
    ASIHTTPRequest *request = [[ASIHTTPRequest alloc]initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://api.box.com/2.0/folders/"]]];
    
    // check out http://developers.box.com/get-started/#authenticating
    
    //[request addRequestHeader:@"Authorization" value:];
    
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
