//
//  AppDelegate.h
//  CustomizableTabView
//
//  Created by Dirk-Willem van Gulik on 10-11-11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CustomizableTabView.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    CustomizableTabView * tv;
    NSColorWell *colorWell;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet CustomizableTabView * tv;
@property (assign) IBOutlet NSColorWell *colorWell;

-(IBAction)addItem:(id)sender;
-(IBAction)removeItem:(id)sender;
-(IBAction)setColour:(id)sender;

@end
