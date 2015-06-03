//
//  AppDelegate.m
//  CustomizableTabView
//
//  Created by Dirk-Willem van Gulik on 10-11-11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window, tv, colorWell, bezelColorWell, plain;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    colorWell.color = tv.backgroundColor;
    bezelColorWell.color = tv.bezelColor;
    
    plain.layer.backgroundColor = [[NSColor blueColor] CGColor];
    plain.layer.borderColor =[[NSColor redColor] CGColor];
    plain.wantsLayer = YES;
    
    // [NSColor setIgnoresAlpha:NO];
    [[NSColorPanel sharedColorPanel] setShowsAlpha:YES];

}

-(IBAction)setColour:(NSColorWell*)sender {
    tv.backgroundColor = sender.color;
    plain.layer.backgroundColor = [sender.color CGColor];
}

-(IBAction)setBezelColour:(NSColorWell*)sender {
    tv.bezelColor = sender.color;
    plain.layer.borderColor =[sender.color CGColor];
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
