//
//  ChatWindowFactory.m
//  SlideChat
//
//  Created by Frederic Jacobs on 11/8/12.
//  Copyright (c) 2012 Movies.io Inc. All rights reserved.
//

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
