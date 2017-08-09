//
//  PathController.m
//  LBAnimationDemo-objective-c
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

#import "PathController.h"

@interface PathController ()

@end

@implementation PathController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    label.center = self.view.center;
    label.text = self.test;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];

    CGMutablePathRef myPath = CGPathCreateMutable();
    CGPathMoveToPoint(myPath, nil,100, 330);
    CGPathAddCurveToPoint(myPath, nil, 50, 0, 50, 100, 0, 100);//15, 0, 15, 30, 0, 30

    CAKeyframeAnimation *ani = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    ani.path = myPath;
    ani.removedOnCompletion = NO;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    ani.autoreverses = YES;
    ani.duration = 6;
    ani.repeatCount = MAXFLOAT;
    
    [label.layer addAnimation:ani forKey:nil];
}

@end
