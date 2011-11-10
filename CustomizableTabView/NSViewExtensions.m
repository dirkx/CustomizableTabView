//
//  NSViewExtensions.m
//  CustomizableTabView
//
//  Created by Dirk-Willem van Gulik on 10/11/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSViewExtensions.h"

@implementation NSView (MyExtensions)

void CGContextAddReverseRect(CGContextRef ctx,CGRect frame) {
    CGContextMoveToPoint(ctx, frame.origin.x, frame.origin.y);
    CGContextAddLineToPoint(ctx, frame.origin.x, frame.origin.y + frame.size.height);
    CGContextAddLineToPoint(ctx, frame.origin.x + frame.size.width, frame.origin.y+frame.size.height);
    CGContextAddLineToPoint(ctx, frame.origin.x + frame.size.width, frame.origin.y);
    CGContextMoveToPoint(ctx, frame.origin.x, frame.origin.y);
}

- (CGPathRef) newPathForRoundedRect:(CGRect)rect radius:(CGFloat)radius
{
	CGMutablePathRef retPath = CGPathCreateMutable();
    
	CGRect innerRect = CGRectInset(rect, radius, radius);
    
	CGFloat inside_right = innerRect.origin.x + innerRect.size.width;
	CGFloat outside_right = rect.origin.x + rect.size.width;
	CGFloat inside_bottom = innerRect.origin.y + innerRect.size.height;
	CGFloat outside_bottom = rect.origin.y + rect.size.height;
    
	CGFloat inside_top = innerRect.origin.y;
	CGFloat outside_top = rect.origin.y;
	CGFloat outside_left = rect.origin.x;
    
	CGPathMoveToPoint(retPath, NULL, innerRect.origin.x, outside_top);
    
	CGPathAddLineToPoint(retPath, NULL, inside_right, outside_top);
	CGPathAddArcToPoint(retPath, NULL, outside_right, outside_top, outside_right, inside_top, radius);
	CGPathAddLineToPoint(retPath, NULL, outside_right, inside_bottom);
	CGPathAddArcToPoint(retPath, NULL,  outside_right, outside_bottom, inside_right, outside_bottom, radius);
    
	CGPathAddLineToPoint(retPath, NULL, innerRect.origin.x, outside_bottom);
	CGPathAddArcToPoint(retPath, NULL,  outside_left, outside_bottom, outside_left, inside_bottom, radius);
	CGPathAddLineToPoint(retPath, NULL, outside_left, inside_top);
	CGPathAddArcToPoint(retPath, NULL,  outside_left, outside_top, innerRect.origin.x, outside_top, radius);
    
	CGPathCloseSubpath(retPath);
    
	return retPath;
}

@end
