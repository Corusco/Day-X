//
//  EntryController.h
//  DayX
//
<<<<<<< HEAD
//  Created by Justin Huntington on 5/8/15.
=======
//  Created by Justin Huntington on 5/6/15.
>>>>>>> origin/master
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

<<<<<<< HEAD
@property (nonatomic, readonly) NSArray *entryArray;

+ (EntryController *)sharedInstance;
- (Entry *)createEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText;
- (void)addEntry:(Entry *)entryToAdd;
- (void)removeEntry:(Entry *)entryToRemove;
- (void)saveToPersistentStorage;
- (void)save;
=======
@property (strong, nonatomic, readonly) NSArray *entries;

+ (EntryController *)sharedInstance;
- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;
- (int)findIndexForEntry:(Entry *)entry;
- (void)insertEntry:(Entry *)entry atIndex:(int)index;
- (void)saveToPersistentStorage;
- (void)save;
- (void)loadFromPersistentStorage;

>>>>>>> origin/master
@end
