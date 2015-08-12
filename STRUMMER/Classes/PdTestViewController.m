//
//  PdTestViewController.m
//  PdTest02
//
//  Created by Richard Lawler on 11/22/10.
/**
 * This software is copyrighted by Richard Lawler. 
 * The following terms (the "Standard Improved BSD License") apply to 
 * all files associated with the software unless explicitly disclaimed 
 * in individual files:
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above  
 * copyright notice, this list of conditions and the following 
 * disclaimer in the documentation and/or other materials provided
 * with the distribution.
 * 3. The name of the author may not be used to endorse or promote
 * products derived from this software without specific prior 
 * written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,   
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 * THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "PdTestViewController.h"
#import "PdTestAppDelegate.h"
#import "PdBase.h"

@implementation PdTestViewController

// outlets
@synthesize outputLeftToggle;
@synthesize outputRightToggle;
@synthesize playToggle;
@synthesize EString;
@synthesize AString;
@synthesize DString;
@synthesize GString;
@synthesize BString;
@synthesize HiEString;


- (void) viewWillAppear:(BOOL)animated {
	[self playStateChanged];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)dealloc {
	[outputLeftToggle release];
	[outputRightToggle release]; 
	[playToggle release];
    //[button1 release];

    [super dealloc];
}

- (IBAction)outputLeftChanged {
	[PdBase sendFloat:(outputLeftToggle.on ? 1. : 0.) toReceiver: @"left" ];
}

- (IBAction)outputRightChanged {
	[PdBase sendFloat:(outputRightToggle.on ? 1. : 0.) toReceiver: @"right" ];
}

- (IBAction)playStateChanged {
	PdTestAppDelegate *appDelegate = (PdTestAppDelegate *) [[UIApplication sharedApplication] delegate];
	}

- (IBAction)playAstring:(float)sender {
    [PdBase sendFloat:(1.0) toReceiver: @"synth" ];
    NSLog(@"hello"); 
}


- (IBAction)sendEString {
	[PdBase sendFloat:(1.0) toReceiver: @"synth" ];
    
    NSLog(@"THE E STRING IS PLAYING NOW!!!!!!!!!");

}
- (IBAction)sendAString {
	[PdBase sendFloat:(AString.state) toReceiver: @"synth" ];
    
}
- (IBAction)sendDString {
	[PdBase sendFloat:(DString.state) toReceiver: @"Dsynth" ];
    
}
- (IBAction)sendGString {
	[PdBase sendFloat:(GString.state) toReceiver: @"synth" ];
    
}
- (IBAction)sendBString {
	[PdBase sendFloat:(BString.state) toReceiver: @"synth" ];
    
}
- (IBAction)sendHiEString {
	[PdBase sendFloat:(HiEString.state) toReceiver: @"synth" ];
    
}
- (IBAction)sendHello{
	NSLog(@"printing outhello");
    
}
@end
