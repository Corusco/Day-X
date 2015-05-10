//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by Justin Huntington on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"
#import "EntryController.h"

@implementation ListTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [EntryController sharedInstance].entryArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell"];
    Entry *targetEntry = [EntryController sharedInstance].entryArray[indexPath.row];
    cell.textLabel.text = targetEntry.title;
    
    return cell;
}

@end
