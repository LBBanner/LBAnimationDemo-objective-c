//
//  ZoomController.m
//  LBAnimationDemo-objective-c
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

#import "ZoomController.h"

@interface ZoomController ()

@end

@implementation ZoomController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    label.center = self.view.center;
    label.text = self.test;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    CABasicAnimation *ani = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    ani.fromValue = @1;
    ani.toValue = @0.6;
    ani.autoreverses = YES;
    ani.repeatCount = MAXFLOAT;
    ani.duration = 1;
    ani.removedOnCompletion = YES;
    ani.fillMode = kCAFillModeForwards;
    
    [label.layer addAnimation:ani forKey:nil];
}

@end
