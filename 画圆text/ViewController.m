//
//  ViewController.m
//  画圆text
//
//  Created by fuwu on 2018/8/28.
//  Copyright © 2018年 符武. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //绘制矩形 CAShapelayayer 是渲染
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.frame = CGRectMake(375/2 - 50, 60, 100, 100);
    //设置背景颜色
    layer.backgroundColor = [UIColor cyanColor].CGColor;
    //设置描边色
    layer.strokeColor = [UIColor lightGrayColor].CGColor;
    //设置填充色
    layer.fillColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:layer];
    
    //UIBezierPath 是绘制矩形路径
    UIBezierPath *Rectpath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 100, 100)];
    layer.path = Rectpath.CGPath;
    
    
   
    CAShapeLayer *ovalLayer = [CAShapeLayer layer];
    ovalLayer.frame =  CGRectMake(375 / 2 - 50, CGRectGetMaxY(layer.frame), 100, 100);
    ovalLayer.fillColor = [UIColor purpleColor].CGColor;
    [self.view.layer addSublayer:ovalLayer];
    //绘制圆形路径
    UIBezierPath *ovalPaht = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    ovalLayer.path = ovalPaht.CGPath;
    
    
    
    //绘制贝塞尔曲线
    UIBezierPath *beiSaiPath = [self startPoint:CGPointMake(10, CGRectGetMaxY(ovalLayer.frame) + 20) endPoint:CGPointMake(375 / 2 - 50, CGRectGetMaxY(ovalLayer.frame) + 20) controlPoint:CGPointMake((10 + (375 / 2 - 50)) / 2 , 200)];
    CAShapeLayer *beiSalLayer = [self createShapeLayer:[UIColor orangeColor]];
    beiSalLayer.path = beiSaiPath.CGPath;
    
    
    UIBezierPath *beiSaiPath1 = [self startPoint:CGPointMake(375 / 2 - 50, CGRectGetMaxY(ovalLayer.frame) + 20) endPoint:CGPointMake(375 / 2 + 70, CGRectGetMaxY(ovalLayer.frame) + 20) controlPoint:CGPointMake(((375 / 2 - 50) + (375 / 2 + 70)) / 2, 400)];
    CAShapeLayer *beiSalLyayer1 = [self createShapeLayer:[UIColor blueColor]];
    beiSalLyayer1.path = beiSaiPath1.CGPath;
    
    
    //添加动画直线
    UIBezierPath *linePah = [UIBezierPath bezierPath];
    [linePah moveToPoint:CGPointMake(50, 667 / 2 + 30)];
    [linePah addLineToPoint:CGPointMake(375 / 2, 667 / 2)];
    
    [linePah addLineToPoint:CGPointMake(300, 667 / 2 + 30)];
    
    [linePah addLineToPoint:CGPointMake(50, 667 / 2 + 30)];
    
    //设置动画
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    //每次动画持续时间
    animation.duration = 5;
    //动画启始位置
    animation.fromValue = @(0);
    //动画结束位置
    animation.toValue = @(1);
    //动画重复次数
    animation.repeatCount = 2;
    
    CAShapeLayer *linelayer = [self createShapeLayer:[UIColor orangeColor]];
    linelayer.path = linePah.CGPath;
    linelayer.lineWidth = 2.0;
    
    [linelayer  addAnimation:animation forKey:@"strokeEndAnimation"];
    
    
    
    /**
     第一圈
     
     */
    
    //设置圆圈的背景
    UIBezierPath *BackPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(375 / 2 - 100, 400, 200, 200)];

   CAShapeLayer *BackLayet =  [self createShapeLayer:[UIColor clearColor]];
     BackLayet.strokeColor = [UIColor orangeColor].CGColor;
    BackLayet.path = BackPath.CGPath;
    BackLayet.lineWidth = 10;

    
    
    //设置动画的圆圈
    UIBezierPath *proPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(375 / 2 - 100, 400, 200, 200)];
    CABasicAnimation *proAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    proAnimation.duration = 2.0;
    proAnimation.fromValue = @(0);
    proAnimation.toValue = @(0.75);
    proAnimation.repeatCount = 1;
    
    CAShapeLayer *proLayet = [self createShapeLayer:[UIColor whiteColor]];
    proLayet.path = proPath.CGPath;
    proLayet.lineWidth = 10;
    
    //圆的开始文字
    proLayet.strokeStart = 0;
    proLayet.strokeEnd = 0.75;
    [proLayet addAnimation:proAnimation forKey:@"strokeEndAnimation"];
    
    
    
    /**
     第二圈
     
     */
    
    UIBezierPath *scondPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(375 / 2 - 80, 400 + 20, 160, 160)];
    CAShapeLayer *scondLayer = [self createShapeLayer:[UIColor clearColor]];
    scondLayer.strokeColor = [UIColor redColor].CGColor;
    scondLayer.path = scondPath.CGPath;
    scondLayer.lineWidth = 10;
    
    
    UIBezierPath *scondPth2 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(375 / 2 - 80, 400 + 20, 160, 160)];
    
 
    
    
    CABasicAnimation *secodAnimation2 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    secodAnimation2.duration = 2.0;
    secodAnimation2.fromValue = @(0);
    secodAnimation2.toValue = @(0.5);
    secodAnimation2.repeatCount = 1;
    
    CAShapeLayer *secondLayer2 = [self createShapeLayer:[UIColor clearColor]];
    secondLayer2.path = scondPth2.CGPath;
    secondLayer2.lineWidth = 10;
    
    //开始的位置
    secondLayer2.strokeStart = 0;
    secondLayer2.strokeEnd = 0.5;
    [secondLayer2 addAnimation:secodAnimation2 forKey:@"strokeEndAnimation"];
    
    
}

/**配置贝塞尔曲线
 @param startPoint 起始点
 @param endPoint 结束点
 @param controlPoint 控制点
 @param UIBezierPath对象
 */
-(UIBezierPath *)startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:startPoint];
    [path addQuadCurveToPoint:endPoint controlPoint:controlPoint];
    
    return path;
}
//创建一个CAShapeLayer
- (CAShapeLayer *)createShapeLayer:(UIColor *)color {
    CAShapeLayer *layet = [CAShapeLayer layer];
    
    //设置描边
    layet.strokeColor = [UIColor blackColor].CGColor;
    //设置填充颜色
    layet.fillColor = [UIColor clearColor].CGColor;//color.CGColor;
    [self.view.layer addSublayer:layet];
    
    return layet;
}












- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
