//
//  ChatWindowFactory.h
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChatWindowFactory : NSObject

// modes are 1=fullscreen, 2= hybrid 3 = doc oriented

+ (CGRect) windowFactoryForXPeerConnections:(NSInteger)peers mode:(NSInteger)modenumber andView:(NSInteger)view;
+ (BOOL) tableViewIsVisibleForPeers:(NSInteger)peers;

@end
