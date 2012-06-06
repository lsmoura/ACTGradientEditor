//
//  ACTGradientEditorAppDelegate.m
//  ACTGradientEditor
//
//  Created by Alex on 14/09/2011.
//  Copyright 2011 ACT Productions. All rights reserved.
//

#import "ACTGradientEditorAppDelegate.h"

@implementation ACTGradientEditorAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [gradientEditor setDelegate:self];
    
    [self gradientChanged: self];
}

- (IBAction)gradientChanged: (id)sender {
    //[gradientEditor setGradientHeight: [slider doubleValue]];
    [gradientView setGradient: [gradientEditor gradient]];
    [gradientView setAngle: [angle doubleValue]];
}

- (void)GradientEditorChangedGradient:(ACTGradientEditor *)editor {
    [self gradientChanged:editor];    
}

@end
