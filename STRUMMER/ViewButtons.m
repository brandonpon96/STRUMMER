//
//  ViewButtons.m
//  PdTest02
//
//  Created by Admin COSMOS on 7/15/13.
//  Copyright (c) 2013 UCI. All rights reserved.
//

#import "ViewButtons.h"
#import "PdTestViewController.h"
#import "PdTestAppDelegate.h"
#import "PdBase.h"
//#import "UIGestureRecognizer.h"

@interface ViewButtons ()

@end

@implementation ViewButtons
@synthesize AString;
@synthesize DString;
@synthesize GString;
@synthesize BString;
@synthesize HiEString;
@synthesize EString;
@synthesize tension;
@synthesize brightness;
@synthesize testingslider;
@synthesize swipeButton;

/*
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
*/
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc {
    [EString release];
    [AString release];
    [DString release];
    [GString release];
    [BString release];
    [HiEString release];
    [tension release];
    [brightness release];
    [tension release];
    [brightness release];
    [testingslider release];
    [_bass release];
    [_guitar release];
    [_uke release];
    [_CM release];
    [_Cm release];
    [_stop release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setEString:nil];
    [self setAString:nil];
    [self setDString:nil];
    [self setGString:nil];
    [self setBString:nil];
    [self setHiEString:nil];
    [self setTension:nil];
    [self setBrightness:nil];
    [self setTension:nil];
    [self setBrightness:nil];
    [self setTestingslider:nil];
    [self setSwipeButton:nil];
    [self setSwipeButton:nil];
    [super viewDidUnload];
}

- (IBAction)SendE:(id)sender {
    [PdBase sendFloat:(1.0) toReceiver: @"Esynth"];
}

- (IBAction)SendA:(id)sender {
    [PdBase sendFloat:(1.0) toReceiver: @"Asynth"];
}

- (IBAction)SendD:(id)sender {
     [PdBase sendFloat:(1.0) toReceiver: @"Dsynth"];
}

- (IBAction)SendG:(id)sender {
     [PdBase sendFloat:(1.0) toReceiver: @"Gsynth"];
}

- (IBAction)SendB:(id)sender {
     [PdBase sendFloat:(1.0) toReceiver: @"Bsynth"];
}

- (IBAction)SendHiE:(id)sender {
    NSLog(@"TFloat is %g", tensionSliderValue);
     [PdBase sendFloat:(1.0) toReceiver: @"HiEsynth"];
    
}

- (IBAction)sliderTest:(id)sender {
     NSLog(@"Float is %g", brightnessSliderValue);
}

- (IBAction)sendBass:(id)sender {
     [PdBase sendFloat:(2.0) toReceiver: @"sLength"];
    NSLog(@"bass");
       [PdBase sendFloat:(1.0) toReceiver: @"stops"];
}

- (IBAction)sendGuitar:(id)sender {
[PdBase sendFloat:(1.0) toReceiver: @"sLength"];
 NSLog(@"guitar");
    NSLog(@"bass");
    [PdBase sendFloat:(1.0) toReceiver: @"stops"];


}

- (IBAction)sendUke:(id)sender {
    [PdBase sendFloat:(0.5) toReceiver: @"sLength"];
    NSLog(@"uke");
    NSLog(@"bass");
    [PdBase sendFloat:(1.0) toReceiver: @"stops"];

}

- (IBAction)sendCM:(id)sender {
    [PdBase sendFloat:(1.0) toReceiver: @"CMa"];
}

- (IBAction)sendCm:(id)sender {
    [PdBase sendFloat:(1.0) toReceiver: @"Cmi"];
}

- (IBAction)sendStop:(id)sender {
         [PdBase sendFloat:(1.0) toReceiver: @"stops"];
}

- (IBAction)swipeSend:(id)sender {
    NSLog (@"sdlkfj");
    [PdBase sendFloat: (1.0)toReceiver: @"swipe" ];
    if (swipeButton.direction == UISwipeGestureRecognizerDirectionLeft){
        [PdBase sendFloat: (1.0)toReceiver: @"swipe" ];
    }
    else if
        (swipeButton.direction == UISwipeGestureRecognizerDirectionRight){
            [PdBase sendFloat: (0.0) toReceiver: @"swipe" ];
        }
}

- (IBAction)adjustTension:(UISlider *)sender {
       tensionSliderValue= self.tension.value;
    [PdBase sendFloat:(tensionSliderValue) toReceiver: @"sTension"];
 
    NSLog(@"tensionFloat is %g", tensionSliderValue);
   // tensionAmount = tension.value;
}


- (IBAction)adjustBrightness:(UISlider *)sender {
    brightnessSliderValue = brightness.value;
    [PdBase sendFloat:(sender.value) toReceiver: @"sBrightness"];
    NSLog(@"tensinFloat is %g", tensionSliderValue);
    NSLog(@"brightFloat is %g", brightnessSliderValue);
}
@end
