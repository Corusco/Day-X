//
//  DetailViewController.h
//  DayX
//
//  Created by Justin Huntington on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Entry *entry;

@end
