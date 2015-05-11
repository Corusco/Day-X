//
//  Entry.m
//  DayX
//
//  Created by Justin Huntington on 5/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

    if (self) {
         self.title = dictionary[TitleKey];
         self.bodyText = dictionary[TextKey];
         self.timestamp = dictionary[TimeKey];
    }
    
    return self;
}

- (NSDictionary *)dictionaryRepresentation {
    NSDictionary *dictionary = @{
                                 TitleKey : self.title,
                                 TextKey : self.bodyText,
                                 TimeKey : self.timestamp,
                                 };
    
    return dictionary;
}

@end
