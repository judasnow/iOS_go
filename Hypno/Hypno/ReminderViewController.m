//
//  ReminderViewController.m
//  Hypno
//
//  Created by ss on 2018/10/21.
//  Copyright © 2018 ss. All rights reserved.
//

#import "ReminderViewController.h"

@interface ReminderViewController()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation ReminderViewController

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"hello";
    note.fireDate = date;
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

// 制定需要加载的 nib 文件
//- (instancetypeconoha)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self.nibName = nibNameOrNil;
//}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Reminder";
    }
    return self;
}

@end
