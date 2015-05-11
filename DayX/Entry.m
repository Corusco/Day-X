//
//  Entry.m
//  DayX
//
//  Created by Justin Huntington on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if (self) {
        self.title = dictionary[@"title"];
        self.bodyText = dictionary[@"text"];
        self.timestamp = dictionary[@"timestamp"];
    }
    
    return self;
}


- (NSDictionary *)persistentDictionary {
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    
    [dictionary setObject:self.title forKey:@"title"];
    [dictionary setObject:self.bodyText forKey:@"text"];
    [dictionary setObject:self.timestamp forKey:@"timestamp"];
    
    return dictionary;
}


@end
