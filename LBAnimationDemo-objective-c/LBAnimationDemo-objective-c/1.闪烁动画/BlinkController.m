//
//  BlinkController.m
//  LBAnimationDemo-objective-c
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

#import "BlinkController.h"

@interface BlinkController ()

@end

@implementation BlinkController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    label.center = self.view.center;
    label.text = self.test;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    CABasicAnimation *ani = [CABasicAnimation animationWithKeyPath:@"opacity"];//必须写opacity才行。
    ani.fromValue = @1;
    ani.toValue = @0.2;
    ani.autoreverses = YES;
    ani.duration = 1;
    ani.repeatCount = MAXFLOAT;
    ani.removedOnCompletion = YES; //这里设置为NO,则需要手动移除动画，否则内存泄漏。 设置成Yes之后下面fillMode就不起作用了
    ani.fillMode = kCAFillModeForwards;
    ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];///没有的话是均匀的动画。
    
    [label.layer addAnimation:ani forKey:nil];
}

@end
