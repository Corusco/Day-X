//
//  Entry.h
//  DayX
//
//  Created by Justin Huntington on 5/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const TitleKey = @"titleKey";
static NSString * const TextKey = @"textKey";
static NSString * const TimeKey = @"timeKey";

@interface Entry : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *bodyText;
@property (nonatomic) NSDate *timestamp;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)dictionaryRepresentation;

@end
