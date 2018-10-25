//
//  HypnosisViewController.m
//  Hypno
//
//  Created by ss on 2018/10/21.
//  Copyright © 2018 ss. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
    CGRect frame = [UIScreen mainScreen].bounds;
    HypnosisView *backgroundView = [[HypnosisView alloc] initWithFrame:frame];
    
    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldRect];
    
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Hypon me";
    textField.returnKeyType = UIReturnKeyDone;
    
    [backgroundView addSubview:textField];
    textField.delegate = self;

    self.view = backgroundView;
}

- (void)drawHypnoticMessage:(NSString *)message
{
    for (int i = 0; i < 20; i++) {
        UILabel *msgLabel = [[UILabel alloc] init];
        
        msgLabel.backgroundColor = [UIColor clearColor];
        msgLabel.textColor = [UIColor whiteColor];
        msgLabel.text = message;
        
        [msgLabel sizeToFit];
        
        int width = (int)(self.view.bounds.size.width - msgLabel.bounds.size.width);
        int x = arc4random() % width;
        
        int height = (int)(self.view.bounds.size.height - msgLabel.bounds.size.height);
        int y = arc4random() % height;
        
        CGRect frame = msgLabel.frame;
        frame.origin = CGPointMake(x, y);
        msgLabel.frame = frame;
        
        [self.view addSubview:msgLabel];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"%@", textField.text);
    [self drawHypnoticMessage:textField.text];
    textField.text = @"";
    [textField resignFirstResponder];
    return YES;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
    }
    return self;
}

@end
