//
//  AppDelegate.h
//  NSDateFormatterTester
//
//  Created by Christopher Walker on 2/19/13.
//  Copyright (c) 2013 Christopher Walker. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate,NSTextFieldDelegate>

@property (strong) NSDateFormatter *dateFormatter;

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *dateTextField;
@property (weak) IBOutlet NSTextField *formatTextField;
@property (weak) IBOutlet NSTextField *resultLabel;
@property (weak) IBOutlet NSTextField *todayLabel;

@end
