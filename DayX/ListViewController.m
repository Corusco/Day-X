//
//  ViewController.m
//  DayX
//
//  Created by Caleb Hicks on 4/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

<<<<<<< Updated upstream
=======
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"viewEntry"]) {
        
        NSArray *entryArray = [EntryController sharedInstance].entries;
        
        Entry *entry  = entryArray[[self.tableView indexPathForSelectedRow].row];
        
        DetailViewController *destination = segue.destinationViewController;
        
        destination.entry = entry;
    }
}

>>>>>>> Stashed changes
@end
