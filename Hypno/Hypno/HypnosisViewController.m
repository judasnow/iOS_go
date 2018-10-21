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
    HypnosisView *backgroundView = [[HypnosisView alloc] init];
    self.view = backgroundView;
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
