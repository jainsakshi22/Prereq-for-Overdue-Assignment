//
//  ViewController.h
//  Preq for Overdue assignment
//
//  Created by Sakshi Jain on 14/10/14.
//  Copyright (c) 2014 Sakshi Jain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)processDateButtonPressed:(UIButton *)sender;


@end

