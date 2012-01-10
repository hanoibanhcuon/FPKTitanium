/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-«YEAR» by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ComFpdfView.h"
//#import "TiUtils.h"
//#import "/Users/Kaze1/Library/Application Support/Titanium/mobilesdk/osx/1.7.5/iphone/include/TiUtils.h"
@implementation ComFpdfView

-(void)dealloc
{
    RELEASE_TO_NIL(square);
    [super dealloc];
}
-(UIView*)square
{
    if (square==nil)
    {
        square = [[UIView alloc] initWithFrame:[self frame]];
        [self addSubview:square];
    }
    return square;
}
-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    if (square!=nil)
    {
        [TiUtils setView:square positionRect:bounds];
    }
}
-(void)setColor_:(id)color
{
    UIColor *c = [[TiUtils colorValue:color] _color];
    UIView *s = [self square];
    s.backgroundColor = c;
}/*
-(void)show:(id)args
{
    [[self view] performSelectorOnMainThread:@selector(show:)
                                  withObject:args waitUntilDone:NO];
}*/

@end
