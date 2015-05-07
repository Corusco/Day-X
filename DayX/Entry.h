//
//  Entry.h
//  DayX
//
//  Created by Justin Huntington on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property NSString *title;
@property NSString *bodyText;
@property NSDate *timestamp;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)persistentDictionary;

@end
