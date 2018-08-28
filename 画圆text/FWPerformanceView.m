//
//  FW_ PerformanceView.m
//  画圆text
//
//  Created by fuwu on 2018/8/28.
//  Copyright © 2018年 符武. All rights reserved.
//

#import "FWPerformanceView.h"

// 获取16进制值的颜色  参数为16进制的颜色值 返回值是UIColor类型
#define HexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@interface FWPerformanceView ()


@property (nonatomic, strong) CAShapeLayer *firstLayer;
@property (nonatomic, strong) UIBezierPath *firstPath;
@property (nonatomic, strong) CAShapeLayer *firstLayer1;
@property (nonatomic, strong) UIBezierPath *firstPath1;


@property (nonatomic, strong) CAShapeLayer *scondLayer;
@property (nonatomic, strong) UIBezierPath *scondPath;
@property (nonatomic, strong) CAShapeLayer *scondLayer1;
@property (nonatomic, strong) UIBezierPath *scondPaht1;


@property (nonatomic, strong) CAShapeLayer *threeLayer;
@property (nonatomic, strong) UIBezierPath *threePath;
@property (nonatomic, strong) CAShapeLayer *threeLayer1;
@property (nonatomic, strong) UIBezierPath *threePath1;


@end

@implementation FWPerformanceView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        [self addLayerByPath];
        
    }
    return self;
}
- (void)addLayerByPath {
    
    //外层圈
    self.firstPath = [UIBezierPath bezierPathWithArcCenter:self.center radius:100 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    self.firstLayer = [CAShapeLayer layer];
    
    self.firstLayer.strokeColor = HexRGB(0xF5F5F5).CGColor;//描边颜色
    self.firstLayer.fillColor = [UIColor clearColor].CGColor;//填充颜色
    
    self.firstLayer.path = self.firstPath.CGPath;
    self.firstLayer.lineWidth = 10;
    [self.layer addSublayer:self.firstLayer];
    
    
    self.firstPath1 = [UIBezierPath bezierPathWithArcCenter:self.center radius:100 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    
    CABasicAnimation *fristAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    fristAnimation.duration = 1.5;
    fristAnimation.fromValue = @(0);
    fristAnimation.toValue = @(1);
    fristAnimation.repeatCount = 100;
    
    self.firstLayer1  = [CAShapeLayer layer];
    self.firstLayer1.strokeColor = [UIColor orangeColor].CGColor;
    self.firstLayer1.fillColor = [UIColor clearColor].CGColor;
    
    self.firstLayer1.lineWidth = 10;
    self.firstLayer1.path = self.firstPath1.CGPath;
    self.firstLayer1.strokeStart = 0;
    self.firstLayer1.strokeEnd = 1;
    
    [self.layer addSublayer:self.firstLayer1];
    
    [self.firstLayer1 addAnimation:fristAnimation forKey:@"strokeEndAnimation"];
    
    
    
    
    //中间层
    self.scondPath = [UIBezierPath bezierPathWithArcCenter:self.center radius:80 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    self.scondLayer = [CAShapeLayer layer];
    self.scondLayer.strokeColor = HexRGB(0xF5F5F5).CGColor;
    self.scondLayer.fillColor = [UIColor clearColor].CGColor;
    self.scondLayer.path = self.scondPath.CGPath;
    self.scondLayer.lineWidth = 10;
    [self.layer addSublayer:self.scondLayer];
    
    
    self.scondPaht1 = [UIBezierPath bezierPathWithArcCenter:self.center radius:80 startAngle:0 endAngle:M_PI * 2 clockwise:NO];
    
    CABasicAnimation *secondAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    secondAnimation.duration = 1.5;
    secondAnimation.fromValue = @(0);
    secondAnimation.toValue = @(1);
    secondAnimation.repeatCount = 100;
    
    self.scondLayer1 = [CAShapeLayer layer];
    //渲染
    self.scondLayer1.path = self.scondPaht1.CGPath;
    
    self.scondLayer1.strokeColor = [UIColor greenColor].CGColor;
    self.scondLayer1.fillColor = [UIColor clearColor].CGColor;
    self.scondLayer1.lineWidth = 10;
    self.scondLayer1.strokeStart = 0;
    self.scondLayer1.strokeEnd = 1;
    
    
    [self.layer addSublayer:self.scondLayer1];
    [self.scondLayer1 addAnimation:secondAnimation forKey:@"strokeEndAnimation"];
    
    
    
    //最内层
    self.threePath = [UIBezierPath bezierPathWithArcCenter:self.center radius:60 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    self.threeLayer = [CAShapeLayer layer];
    self.threeLayer.path = self.threePath.CGPath;
    self.threeLayer.lineWidth = 10;
    self.threeLayer.strokeColor = HexRGB(0xF5F5F5).CGColor;
    self.threeLayer.fillColor = [UIColor clearColor].CGColor;
    [self.layer addSublayer:self.threeLayer];
    
    
    self.threePath1 = [UIBezierPath bezierPathWithArcCenter:self.center radius:60 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    
    CABasicAnimation *threeAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    threeAnimation.duration = 1.5;
    threeAnimation.fromValue = @(0);
    threeAnimation.toValue = @(1);
    threeAnimation.repeatCount = 100;
    
    self.threeLayer1 = [CAShapeLayer layer];
    self.threeLayer1.path = self.threePath1.CGPath;
    
    self.threeLayer1.strokeColor = [UIColor redColor].CGColor;
    self.threeLayer1.fillColor = [UIColor clearColor].CGColor;
    self.threeLayer1.lineWidth = 10;
    
    [self.layer  addSublayer:self.threeLayer1];
    
    [self.threeLayer1 addAnimation:threeAnimation forKey:@"strokeEndAnimation"];
    
    
}




@end
