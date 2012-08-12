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

+ (CGRect) windowFactoryForXPeerConnections:(NSInteger)peers andView:(NSInteger)view{
    
    if (peers == 0) {
        return CGRectMake(0, 110, 704, 528);
    }

    if (peers == 1) {
        
        if (view == 0 ) {
            return CGRectMake(96, 0, 512, 384);
        }
        
        if (view == 1) {
            return CGRectMake(96, 384, 512, 384);
        }
        
    }
    
    if (peers == 2) {
        if (view == 0) {
            return CGRectMake(96, 0, 512, 384);
        }
        
        if (view == 1) {
            return CGRectMake(0, 444, 352, 264);
        }
        
        if (view == 2) {
            return CGRectMake(438, 444, 352, 264);
        }
        
    }
    
    if (peers == 3) {
        
        
        if (view == 0) {
            return CGRectMake(0, 0, 512, 384);
        }
        
        if (view == 1) {
            return CGRectMake(512, 0, 512, 384);
        }
        
        if (view == 2) {
            return CGRectMake(0, 384, 512, 384);
        }
        
        if (view == 3) {
            return CGRectMake(512, 384, 512, 384);
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
    
    return CGRectMake(0, 0, 0, 0);
    
}

@end
