//
//  EntryController.h
//  DayX
//
//  Created by Justin Huntington on 5/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (nonatomic, readonly) NSArray *entryArray;

+ (EntryController *)sharedInstance;
- (Entry *)createEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText;
- (void)addEntry:(Entry *)entryToAdd;
- (void)removeEntry:(Entry *)entryToRemove;
- (void)saveToPersistentStorage;
- (void)save;
@end
