//
//  DetailViewController.m
//  DayX
//
//  Created by Justin Huntington on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () 

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clearButtonTapped:(UIButton *)sender {
    self.textField.text = @"";
    self.textView.text = @"";
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}
<<<<<<< Updated upstream
=======
- (IBAction)clearButtonTapped:(id)sender
{
    self.textView.text = @"";
    self.detailLabel.text = @"";
    
}

- (IBAction)saveButtonTapped:(id)sender {
    
    if (!self.entry){
        Entry *entry = [Entry new];
        entry.title = self.detailLabel.text;
        entry.bodyText = self.textView.text;
        entry.timestamp = [NSDate date];
        
    [[EntryController sharedInstance] addEntry:entry];
    
    self.entry = entry;
    } else {
        int index = [[EntryController sharedInstance] findIndexForEntry:self.entry];
        
        Entry *entry = [Entry new];
        entry.title = self.detailLabel.text;
        entry.bodyText = self.textView.text;
        entry.timestamp = [NSDate date];
        
        [[EntryController sharedInstance] insertEntry:entry atIndex:index];
        
        self.entry = entry;
    }
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
    [[EntryController sharedInstance] save];
}

- (void)updateWithEntry:(Entry *)entry {
    self.detailLabel.text = entry.title;
    self.textView.text = entry.bodyText;
}
>>>>>>> Stashed changes

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
