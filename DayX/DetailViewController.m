//
//  DetailViewController.m
//  DayX
//
//  Created by Justin Huntington on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController () 

@property (weak, nonatomic) IBOutlet UITextField *title;
@property (weak, nonatomic) IBOutlet UITextView *bodyText;

@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWithEntry:self.entryToBeViewed];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clearButtonTapped:(UIButton *)sender {
    self.title.text = @"";
    self.bodyText.text = @"";
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

- (IBAction)saveButtonTapped:(id)sender {
    if (self.entryToBeViewed) {
        self.entryToBeViewed.title = self.title.text;
        self.entryToBeViewed.bodyText = self.bodyText.text;
        self.entryToBeViewed.timestamp = [NSDate date];
        
        [[EntryController sharedInstance] save];
    } else {
    self.entryToBeViewed = [[EntryController sharedInstance] createEntryWithTitle:self.title.text bodyText:self.bodyText.text];
    }
}

- (void)updateWithEntry:(Entry *)selectedEntry{
    self.title.text = selectedEntry.title;
    self.bodyText.text = selectedEntry.bodyText;
}

@end
