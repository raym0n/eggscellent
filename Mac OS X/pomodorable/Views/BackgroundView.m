#import "BackgroundView.h"

#define FILL_OPACITY .9
#define STROKE_OPACITY .8

#define LINE_THICKNESS 1
#define CORNER_RADIUS 6

#define SEARCH_INSET 10

#pragma mark -

@implementation BackgroundView
@synthesize backgroundImage;
//@synthesize arrowX = _arrowX;

#pragma mark -

- (void)drawRect:(NSRect)dirtyRect
{
    [backgroundImage drawInRect:self.frame fromRect:self.frame operation:NSCompositeSourceOver fraction:1];
}


#pragma mark -
#pragma mark Public accessors

//- (void)setArrowX:(NSInteger)value
//{
//    _arrowX = value;
//    [self setNeedsDisplay:YES];
//}

//OLD DRAW RECT CODE
//[[NSColor clearColor] setFill];
//NSRectFill(dirtyRect);
//return;
//NSRect contentRect = NSInsetRect([self bounds], LINE_THICKNESS, LINE_THICKNESS);
//NSBezierPath *path = [NSBezierPath bezierPath];
//
//[path moveToPoint:NSMakePoint(_arrowX, NSMaxY(contentRect))];
//[path lineToPoint:NSMakePoint(_arrowX + ARROW_WIDTH / 2, NSMaxY(contentRect) - ARROW_HEIGHT)];
//[path lineToPoint:NSMakePoint(NSMaxX(contentRect) - CORNER_RADIUS, NSMaxY(contentRect) - ARROW_HEIGHT)];
//
//NSPoint topRightCorner = NSMakePoint(NSMaxX(contentRect), NSMaxY(contentRect) - ARROW_HEIGHT);
//[path curveToPoint:NSMakePoint(NSMaxX(contentRect), NSMaxY(contentRect) - ARROW_HEIGHT - CORNER_RADIUS)
//     controlPoint1:topRightCorner controlPoint2:topRightCorner];
//
//[path lineToPoint:NSMakePoint(NSMaxX(contentRect), NSMinY(contentRect) + CORNER_RADIUS)];
//
//NSPoint bottomRightCorner = NSMakePoint(NSMaxX(contentRect), NSMinY(contentRect));
//[path curveToPoint:NSMakePoint(NSMaxX(contentRect) - CORNER_RADIUS, NSMinY(contentRect))
//     controlPoint1:bottomRightCorner controlPoint2:bottomRightCorner];
//
//[path lineToPoint:NSMakePoint(NSMinX(contentRect) + CORNER_RADIUS, NSMinY(contentRect))];
//
//[path curveToPoint:NSMakePoint(NSMinX(contentRect), NSMinY(contentRect) + CORNER_RADIUS)
//     controlPoint1:contentRect.origin controlPoint2:contentRect.origin];
//
//[path lineToPoint:NSMakePoint(NSMinX(contentRect), NSMaxY(contentRect) - ARROW_HEIGHT - CORNER_RADIUS)];
//
//NSPoint topLeftCorner = NSMakePoint(NSMinX(contentRect), NSMaxY(contentRect) - ARROW_HEIGHT);
//[path curveToPoint:NSMakePoint(NSMinX(contentRect) + CORNER_RADIUS, NSMaxY(contentRect) - ARROW_HEIGHT)
//     controlPoint1:topLeftCorner controlPoint2:topLeftCorner];
//
//[path lineToPoint:NSMakePoint(_arrowX - ARROW_WIDTH / 2, NSMaxY(contentRect) - ARROW_HEIGHT)];
//[path closePath];
//
//[[NSColor colorWithDeviceWhite:1 alpha:FILL_OPACITY] setFill];
//[path fill];
//
//[NSGraphicsContext saveGraphicsState];
//
//NSBezierPath *clip = [NSBezierPath bezierPathWithRect:[self bounds]];
//[clip appendBezierPath:path];
//[clip addClip];
//
//[path setLineWidth:LINE_THICKNESS * 2];
//[[NSColor colorWithDeviceWhite:0.5 alpha:STROKE_OPACITY] setStroke];
//[path stroke];
//
//[NSGraphicsContext restoreGraphicsState];
//}

@end
