//
//  AppDelegate.m
//  CustomizableTabView
//
//  Created by Dirk-Willem van Gulik on 10-11-11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window, tv;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(IBAction)addItem:(id)sender {
    NSString * str = [[NSDate date] description];
    NSTabViewItem * item = [[NSTabViewItem alloc] initWithIdentifier:str];
    item.label = str;
    [tv addTabViewItem:item];                
}

-(IBAction)removeItem:(id)sender {
    [tv removeTabViewItem:[tv selectedTabViewItem]];
}

@end
