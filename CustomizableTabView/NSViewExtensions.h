//
//  NSViewExtensions.h
//  CustomizableTabView
//
//  Created by Dirk-Willem van Gulik on 10/11/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//



@interface NSView (MyExtensions)


// Mirrored rectangle draw - as to use even/odd winding rules.
//
void CGContextAddReverseRect(CGContextRef ctx,CGRect frame);

// Source: http://www.cocoanetics.com/2010/02/drawing-rounded-rectangles/, : Drobnik KG.
//
- (CGPathRef) newPathForRoundedRect:(CGRect)rect radius:(CGFloat)radius;
@end
