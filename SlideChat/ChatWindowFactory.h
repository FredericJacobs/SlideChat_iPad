//
//  ChatWindowFactory.h
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChatWindowFactory : NSObject
+ (CGRect) windowFactoryForXPeerConnections:(NSInteger)peers andView:(NSInteger)view;
@end
