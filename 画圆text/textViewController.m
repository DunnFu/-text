//
//  textViewController.m
//  画圆text
//
//  Created by fuwu on 2018/8/28.
//  Copyright © 2018年 符武. All rights reserved.
//

#import "textViewController.h"
#import "FWPerformanceView.h"

@interface textViewController ()

@end

@implementation textViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    FWPerformanceView *vis = [[FWPerformanceView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:vis];
    
    
//    UIBezierPath *scondPath = [UIBezierPath bezierPathWithArcCenter:self.view.center radius:80 startAngle:0 endAngle:M_PI * 2.0  clockwise:YES];
//
//
//    CAShapeLayer *scondLayer = [self createShapeLayer:[UIColor cyanColor]];
//    scondLayer.strokeColor = [UIColor redColor].CGColor;
//    scondLayer.path = scondPath.CGPath;
//    scondLayer.lineWidth = 10;
//
//
//
//
//    UIBezierPath *scondPth2 = [UIBezierPath bezierPathWithArcCenter:self.view.center radius:80 startAngle:0 endAngle:M_PI * 2.0  clockwise:NO];
//
//
//
//    CABasicAnimation *secodAnimation2 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
//    secodAnimation2.duration = 2.0;
//    secodAnimation2.fromValue = @(0);
//    secodAnimation2.toValue = @(0.5);
//    secodAnimation2.repeatCount = 1;
//
//    CAShapeLayer *secondLayer2 = [self createShapeLayer:[UIColor orangeColor]];
//    secondLayer2.path = scondPth2.CGPath;
//    secondLayer2.lineWidth = 10;
//
//    //开始的位置
//    secondLayer2.strokeStart = 0;
//    secondLayer2.strokeEnd = 0.5;
//
//    [secondLayer2 addAnimation:secodAnimation2 forKey:@"strokeEndAnimation"];

}

//创建一个CAShapeLayer
- (CAShapeLayer *)createShapeLayer:(UIColor *)color {
    CAShapeLayer *layet = [CAShapeLayer layer];
    
    //设置描边
    layet.strokeColor = color.CGColor;
    //设置填充颜色
    layet.fillColor = [UIColor clearColor].CGColor;//color.CGColor;
    [self.view.layer addSublayer:layet];
    
    return layet;
}


@end
