//
//  ChatWindowFactory.m
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




#import "ChatWindowFactory.h"

@implementation ChatWindowFactory

// first frame is always my own image
// then others

+ (BOOL) tableViewIsVisibleForPeers:(NSInteger)peers{
    
    if (peers == 3 || peers == 4) {
        return FALSE;
    }
    
return true;
    
}

+  (CGRect) windowFactoryForXPeerConnections:(NSInteger)peers mode:(NSInteger)modenumber andView:(NSInteger)view;{
    
    if (modenumber == 1) {
        
    }
        
    if (modenumber == 2) {
        
        if (peers == 0) {
            return CGRectMake(0, 65, 824, 618);
        }
        
        if (peers == 1) {
            
            if (view == 0 ) {
                return CGRectMake(163, 0, 498, 374);
            }
            
            if (view == 1) {
                return CGRectMake(163, 374, 498, 374);
            }
            
        }
        
        if (peers == 2) {
            if (view == 0) {
                return CGRectMake(270, 384, 485, 364);
            }
            
            if (view == 1) {
                return CGRectMake(0, 0, 512, 384);
            }
            
            if (view == 2) {
                return CGRectMake(512, 0, 512, 384);
            }
            
        }
        
        if (peers == 3) {
            
            
            if (view == 0) {
                return CGRectMake(0, 0, 512, 374);
            }
            
            if (view == 1) {
                return CGRectMake(512, 0, 512, 374);
            }
            
            if (view == 2) {
                return CGRectMake(0, 374, 512, 374);
            }
            
            if (view == 3) {
                return CGRectMake(512, 374, 512, 374);
            }
            
        }
        
        if (peers == 4) {
            
            if (view == 0) {
                return CGRectMake(0, 0, 0, 0);
            }
            
            if (view == 1) {
                return CGRectMake(0, 0, 512, 384);
            }
            
            if (view == 2) {
                return CGRectMake(512, 0, 512, 384);
            }
            
            if (view == 3) {
                return CGRectMake(0, 384, 512, 384);
            }
            
            if (view == 4) {
                return CGRectMake(512, 384, 512, 384);
            }
        }
    }
    
    if (modenumber == 3) {
        
        
        if (peers == 0) {
            return CGRectMake(416, 0, 256, 192);
        }
        
        if (peers == 1) {
            
            if (view == 0 ) {
                return CGRectMake(0, 0, 256, 192);
            }
            
            if (view == 1) {
                return CGRectMake(256, 0, 256, 192);
            }
            
        }
        
        if (peers == 2) {
            if (view == 0 ) {
                return CGRectMake(0, 0, 256, 192);
            }
            
            if (view == 1) {
                return CGRectMake(256, 0, 256, 192);
            }
            
            if (view == 2) {
                return CGRectMake(512, 0, 256, 192);
            }
            
        }
        
        if (peers == 3) {
            
            
            if (view == 0 ) {
                return CGRectMake(0, 0, 256, 192);
            }
            
            if (view == 1) {
                return CGRectMake(256, 0, 256, 192);
            }
            
            if (view == 2) {
                return CGRectMake(512, 0, 256, 192);
            }
            if (view == 3) {
                return CGRectMake(768, 0, 256, 192);
            }
            
        }
        
        if (peers == 4) {
            
            if (view == 0) {
                return CGRectMake(0, 0, 0, 0);
            }
            
            if (view == 1) {
                return CGRectMake(0, 0, 512, 384);
            }
            
            if (view == 2) {
                return CGRectMake(512, 0, 512, 384);
            }
            
            if (view == 3) {
                return CGRectMake(0, 384, 512, 384);
            }
            
            if (view == 4) {
                return CGRectMake(512, 384, 512, 384);
            }
        }


        
    }
    return CGRectMake(0, 0, 0, 0);
    
}


@end
