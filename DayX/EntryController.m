//
//  EntryController.m
//  DayX
//
//  Created by Justin Huntington on 5/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"

static NSString * const AllEntriesKey = @"allEntries";

@interface EntryController ()

@property (strong, nonatomic) NSArray *entryArray;

@end

static NSString const *entryKey = @"entry";

@implementation EntryController

+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        
        sharedInstance.entryArray = [NSArray new];
    });
    return sharedInstance;
}

- (Entry *)createEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText {
    Entry *entry = [Entry new];
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timestamp = [NSDate date];
    
    [self addEntry:entry];
    
    return entry;
}

- (void)addEntry:(Entry *)entryToAdd{
    NSMutableArray *additiveArray = [NSMutableArray new];
    [additiveArray addObject:entryToAdd];
    
    self.entryArray = additiveArray;
    [self saveToPersistentStorage];
}


- (void)removeEntry:(Entry *)entryToRemove{
    NSMutableArray *removalArray = [NSMutableArray new];
    [removalArray removeObject:entryToRemove];
    
    self.entryArray = removalArray;
    [self saveToPersistentStorage];
}

- (void)saveToPersistentStorage{
    NSMutableArray *saveArray = [NSMutableArray new];
    for (Entry *entry in self.entryArray) {
        [saveArray addObject:[entry dictionaryRepresentation]];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:saveArray forKey:AllEntriesKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)loadFromPersistentStorage {
    NSArray *entryDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:AllEntriesKey];
    self.entryArray = entryDictionaries;
    
    NSMutableArray *entries = [NSMutableArray new];
    for (NSDictionary *entry in entryDictionaries) {
        [entries addObject:[[Entry alloc] initWithDictionary:entry]];
    }
    
    self.entryArray = entries;
}

- (void)save {
    [self saveToPersistentStorage];
}


@end

