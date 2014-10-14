//
//  ViewController.m
//  Preq for Overdue assignment
//
//  Created by Sakshi Jain on 14/10/14.
//  Copyright (c) 2014 Sakshi Jain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@", self.textView.text);
    self.textView.delegate = self;
    
    NSMutableArray *myMutableArray = [@[@"hello",@"bye",@22,@40,@"sakshi"] mutableCopy];
    [myMutableArray insertObject:@"JAIN" atIndex:0];
    NSLog(@"%@",myMutableArray);
    
    [myMutableArray removeObjectAtIndex:2];
    NSLog(@"%@",myMutableArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)processDateButtonPressed:(UIButton *)sender
{
    NSDate *date = self.datePicker.date;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-mm-dd"];
    
    NSString *dateFromString  = [formatter stringFromDate:date];
    NSLog(@"%@",dateFromString);
    NSLog(@"%@",[NSDate date]);
    int timeInterval = [date timeIntervalSince1970];
    NSLog(@"%i",timeInterval);
    
}

#pragma mark - UITextView Delegate method

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"])
    {
        [self.textView resignFirstResponder];
        return NO;
    }
    else
        return YES;
}


@end
