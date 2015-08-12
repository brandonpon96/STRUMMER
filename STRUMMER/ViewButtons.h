//
//  ViewButtons.h
//  PdTest02
//
//  Created by Admin COSMOS on 7/15/13.
//  Copyright (c) 2013 UCI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewButtons.h"
#import "PdTestViewController.h"
#import "PdTestAppDelegate.h"
#import "PdBase.h"

@interface ViewButtons : UIViewController <UIGestureRecognizerDelegate> {

    float lengthSliderValue;
    float tensionSliderValue;
    float brightnessSliderValue;
}
//IBOutlet UISwipeGestureRecognizer *swipeButton;
@property (retain, nonatomic) IBOutlet UIImageView *AString;
@property (retain, nonatomic) IBOutlet UIImageView *DString;
@property (retain, nonatomic) IBOutlet UIImageView *GString;
@property (retain, nonatomic) IBOutlet UIImageView *BString;
@property (retain, nonatomic) IBOutlet UIImageView *HiEString;
@property (retain, nonatomic) IBOutlet UIImageView *EString;
@property (retain, nonatomic) IBOutlet UISlider *tension;
@property (retain, nonatomic) IBOutlet UISlider *brightness;
@property (retain, nonatomic) IBOutlet UIButton *testingslider;
- (IBAction)sliderTest:(id)sender;
@property (retain, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeButton;
@property (retain, nonatomic) IBOutlet UIButton *bass;
- (IBAction)sendBass:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *guitar;
- (IBAction)sendGuitar:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *uke;
- (IBAction)sendUke:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *CM;
- (IBAction)sendCM:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *Cm;
- (IBAction)sendCm:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *stop;
- (IBAction)sendStop:(id)sender;




- (IBAction)swipeSend:(id)sender;

- (IBAction)adjustTension:(id)sender;
- (IBAction)test:(id)sender;
- (IBAction)adjustBrightness:(id)sender;


- (IBAction)SendE:(id)sender;
- (IBAction)SendA:(id)sender;
- (IBAction)SendD:(id)sender;
- (IBAction)SendG:(id)sender;
- (IBAction)SendB:(id)sender;
- (IBAction)SendHiE:(id)sender;

@end
