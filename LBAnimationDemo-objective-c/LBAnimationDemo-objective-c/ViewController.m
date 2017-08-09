//
//  ViewController.m
//  LBAnimationDemo-objective-c
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

#import "ViewController.h"

#import "BlinkController.h"  // 1.闪烁动画
#import "MoveController.h"   // 2.位移动画
#import "ZoomController.h"   // 3.缩放动画
#import "RotateController.h" // 4.旋转动画
#import "PathController.h"   // 5.路径动画


@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *demoTableView;
@property (nonatomic,strong) NSArray *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self datas];
    [self.view addSubview:self.demoTableView];
}

#pragma mark - lazy load

- (NSArray *)datas {
    if (_datas == nil) {
         _datas = @[@"1.闪烁动画",
                    @"2.位移动画",
                    @"3.缩放动画",
                    @"4.旋转动画",
                    @"5.路径动画"];
    }
    return _datas;
}

- (UITableView *)demoTableView {
    if (_demoTableView == nil) {
        _demoTableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
        _demoTableView.delegate = self;
        _demoTableView.dataSource = self;
        [_demoTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellReuseIdentifier"];
    }
    return _demoTableView;
}

#pragma mark - UITableViewDelegate & UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [_demoTableView dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:indexPath];
    cell.textLabel.text = self.datas[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger index = indexPath.row;
    NSString *title = self.datas[index];
    
    switch (index) {
        case 0:
        {
            BlinkController *VC = [[BlinkController alloc] init];
            VC.test = title;
            VC.navigationItem.title = title;
            [self.navigationController pushViewController:VC animated:YES];
            break;
        }
        case 1:
        {
            MoveController *VC = [[MoveController alloc] init];
            VC.test = title;
            VC.navigationItem.title = title;
            [self.navigationController pushViewController:VC animated:YES];
            break;
        }
        case 2:
        {
            ZoomController *VC = [[ZoomController alloc] init];
            VC.test = title;
            VC.navigationItem.title = title;
            [self.navigationController pushViewController:VC animated:YES];
            break;
        }
        case 3:
        {
            RotateController *VC = [[RotateController alloc] init];
            VC.test = title;
            VC.navigationItem.title = title;
            [self.navigationController pushViewController:VC animated:YES];
            break;
        }
        case 4:
        {
            PathController *VC = [[PathController alloc] init];
            VC.test = title;
            VC.navigationItem.title = title;
            [self.navigationController pushViewController:VC animated:YES];
            break;
        }
        default:
            break;
    }
}

@end
