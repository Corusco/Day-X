//
//  ViewController.m
//  DayX
//
//  Created by Caleb Hicks on 4/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListViewController.h"
#import "DetailViewController.h"
#import "EntryController.h"

@interface ListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ListViewController

- (void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

<<<<<<< HEAD

// ****This is the big one! Figure this one out!****
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"viewEntry"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        DetailViewController *detailController = segue.destinationViewController;
        
        Entry *selectedEntry = [EntryController sharedInstance].entryArray[indexPath.row];
        
        detailController.entryToBeViewed = selectedEntry;
    }
}

=======
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
>>>>>>> origin/master
@end
