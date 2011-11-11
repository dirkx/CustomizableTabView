//
//  AppDelegate.m
//  CustomizableTabView
//
//  Created by Dirk-Willem van Gulik on 10-11-11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window, tv, colorWell, bezelColorWell;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    colorWell.color = tv.backgroundColor;
    bezelColorWell.color = tv.bezelColor;
    
    // [NSColor setIgnoresAlpha:NO];
    [[NSColorPanel sharedColorPanel] setShowsAlpha:YES];

}

-(IBAction)setColour:(NSColorWell*)sender {
    tv.backgroundColor = sender.color;
}

-(IBAction)setBezelColour:(NSColorWell*)sender {
    tv.bezelColor = sender.color;
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
