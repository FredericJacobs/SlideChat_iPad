//
//  ChatWindowFactory.h
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




#import <Foundation/Foundation.h>

@interface ChatWindowFactory : NSObject

// modes are 1=fullscreen, 2= hybrid 3 = doc oriented

+ (CGRect) windowFactoryForXPeerConnections:(NSInteger)peers mode:(NSInteger)modenumber andView:(NSInteger)view;
+ (BOOL) tableViewIsVisibleForPeers:(NSInteger)peers;

@end
