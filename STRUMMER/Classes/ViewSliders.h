//
//  ViewSliders.h
//  PdTest02
//
//  Created by Admin COSMOS on 7/16/13.
//  Copyright (c) 2013 UCI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewButtons.h"


@interface ViewSliders : UIViewController
@property (retain, nonatomic) IBOutlet UISlider *length;
@property (retain, nonatomic) IBOutlet UISlider *tension;
@property (retain, nonatomic) IBOutlet UISlider *brightness;
- (IBAction)adjustLength:(id)sender;
- (IBAction)adjustTension:(id)sender;
- (IBAction)adjustBrightness:(id)sender;



@end
