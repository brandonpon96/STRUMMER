//
//  ViewSliders.m
//  PdTest02
//
//  Created by Admin COSMOS on 7/16/13.
//  Copyright (c) 2013 UCI. All rights reserved.
//

#import "ViewSliders.h"
#import "PdTestViewController.h"
#import "PdTestAppDelegate.h"
#import "PdBase.h"

@interface ViewSliders ()

@end

@implementation ViewSliders
//@synthesize adjustTension;
@synthesize length;
@synthesize tension;
@synthesize brightness;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc {
    [length release];
    [tension release];
    [brightness release];
   // [adjustTension release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setLength:nil];
    [self setTension:nil];
    [self setBrightness:nil];
   // [self setAdjustTension:nil];
    [super viewDidUnload];
}
- (IBAction)adjustLength:(UISlider *)sender {
    [PdBase sendFloat:(sender.value) toReceiver: @"sLength"];
    NSLog(@"Float is %g", sender.value);
}

- (IBAction)adjustTension:(UISlider *)sender {
    [PdBase sendFloat:(sender.value) toReceiver: @"sTension"];
    NSLog(@"Float is %g", sender.value);
}

- (IBAction)adjustBrightness:(UISlider *)sender {
    [PdBase sendFloat:(sender.value) toReceiver: @"sBrightness"];
    NSLog(@"Float is %g", sender.value);
}
@end
