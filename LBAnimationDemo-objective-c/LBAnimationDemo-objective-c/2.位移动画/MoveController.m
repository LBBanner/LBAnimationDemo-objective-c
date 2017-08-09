//
//  MoveController.m
//  LBAnimationDemo-objective-c
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

#import "MoveController.h"

@interface MoveController ()

@end

@implementation MoveController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 150, 200, 50)];
    label.center = self.view.center;
    label.text = self.test;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    // x轴移动
    CABasicAnimation *ani = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
    ani.toValue = @120;
    ani.duration = 6;
    ani.removedOnCompletion = YES;
    ani.repeatCount = MAXFLOAT;
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    [label.layer addAnimation:ani forKey:nil];
}

@end
