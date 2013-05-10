//
//  AppDelegate.m
//  NSDateFormatterTester
//
//  Created by Christopher Walker on 2/19/13.
//  Copyright (c) 2013 Christopher Walker. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    self.dateFormatter = [[NSDateFormatter alloc] init];
    [self.dateFormatter setDateFormat:self.formatTextField.stringValue];
    self.dateTextField.stringValue = [self.dateFormatter stringFromDate:[NSDate date]];
    self.resultLabel.stringValue = [[self.dateFormatter dateFromString:self.dateTextField.stringValue] description];
    self.todayLabel.stringValue = [self.dateFormatter stringFromDate:[NSDate date]];
}

-(void)formatDate
{
    [self.dateFormatter setDateFormat:self.formatTextField.stringValue];
    NSDate *formatted = [self.dateFormatter dateFromString:self.dateTextField.stringValue];
    if(formatted)
    {
        self.resultLabel.stringValue = [formatted description];
        self.todayLabel.stringValue = [self.dateFormatter stringFromDate:[NSDate date]];
    } else {
        self.resultLabel.stringValue = @"NIL!!!";
        self.todayLabel.stringValue = @"NIL!!!";
    }
}

-(void)controlTextDidChange:(NSNotification *)obj
{
    [self formatDate];
}

@end
