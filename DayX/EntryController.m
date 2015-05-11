//
//  EntryController.m
//  DayX
//
<<<<<<< HEAD
//  Created by Justin Huntington on 5/8/15.
=======
//  Created by Justin Huntington on 5/6/15.
>>>>>>> origin/master
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"
<<<<<<< HEAD

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

=======
#import "Entry.h"

@interface EntryController ()

@property (strong, nonatomic)  NSArray *entries;

@end

@implementation EntryController

+ (EntryController *)sharedInstance {
static EntryController *sharedInstance = nil;
static dispatch_once_t onceToken;
dispatch_once(&onceToken, ^{
    sharedInstance = [EntryController new];
    [sharedInstance loadFromPersistentStorage];
});

    return sharedInstance;
}

-(void)addEntry:(Entry *)entry{
    NSMutableArray *entryArray = [[NSMutableArray alloc] initWithArray:self.entries];
    [entryArray addObject:entry];
    _entries = entryArray;
    
    [self saveToPersistentStorage];
}

-(void)removeEntry:(Entry *)entry{
    NSMutableArray *removalArray = [[NSMutableArray alloc] initWithArray:self.entries];
    [removalArray removeObject:entry];
    _entries = removalArray;
    
    [self saveToPersistentStorage];
}

-(int)findIndexForEntry:(Entry *)entry{
    int index;
    
    for (int i = 0; i < _entries.count; i++) {
        if ([_entries[i] isEqual:entry]) {
            index = i;
        }
    }
    if (index) {
        return index;
    } else {
        return Nil;
    }
}

- (void) insertEntry:(Entry *)entry atIndex:(int)index{
    NSMutableArray *entryArray = [[NSMutableArray alloc] initWithArray:_entries];
    [entryArray removeObjectAtIndex:index];
    [entryArray insertObject:entry atIndex:index];
    
    _entries = entryArray;
    
    [self saveToPersistentStorage];
}

- (void)saveToPersistentStorage {
    NSMutableArray *persistentArray  = [NSMutableArray new];
    
    for (Entry *i in _entries) {
        [persistentArray addObject:[i persistentDictionary]];
    }
    [[NSUserDefaults standardUserDefaults] setObject:persistentArray forKey:@"AllEntriesKey"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)save{
    [self saveToPersistentStorage];
}

- (void)loadFromPersistentStorage {
    NSArray *allDictionaries = [[NSUserDefaults standardUserDefaults] arrayForKey:@"AllEntriesKey"];
    NSMutableArray *allEntries = [NSMutableArray new];
    
    for (NSDictionary *i in allDictionaries) {
        [allEntries addObject:[[Entry alloc] initWithDictionary:i]];
    }
    
    self.entries = allEntries;
    
    
}

@end
>>>>>>> origin/master
