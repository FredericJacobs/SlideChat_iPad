//
//  SCSync.h
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




//

#import <Foundation/Foundation.h>

@interface SCSync : NSObject{
    
    NSString *username;
    NSString *token;
    NSError *error;
    NSArray *files;
}
- (void) setToken:(NSString*)token;
- (void) setUsername:(NSString*)username;
- (NSString*) username;
- (NSString*) token;

- (NSArray *) getFiles;


+ (id)sharedManager;

@end
