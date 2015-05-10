//
//  DetailViewController.h
//  DayX
//
//  Created by Justin Huntington on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic) Entry *entryToBeViewed;

@end
