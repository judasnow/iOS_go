//
//  HypnosisView.m
//  Hypnosister
//
//  Created by judasnow on 2018/10/17.
//  Copyright © 2018 judasnow. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;
    
    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    [path addArcWithCenter:center
                    radius:radius
                startAngle:0.0
                  endAngle:M_PI * 2.0
                 clockwise:YES];
    
    [path stroke];
}

@end
