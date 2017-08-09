//
//  RotateController.m
//  LBAnimationDemo-objective-c
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

#import "RotateController.h"

@interface RotateController ()

@end

@implementation RotateController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    label.center = self.view.center;
    label.text = self.test;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    CATransform3D rotate3D = CATransform3DMakeRotation(M_PI, 0, 100, 0);
    CABasicAnimation *ani = [CABasicAnimation animationWithKeyPath:@"transform"];
    ani.toValue = [NSValue valueWithCATransform3D:rotate3D];
    ani.duration = 2;
    ani.autoreverses = YES;
    ani.cumulative = YES;
    ani.repeatCount = MAXFLOAT;
    ani.fillMode = kCAFillModeForwards;
    
    [label.layer addAnimation:ani forKey:nil];
}

@end
