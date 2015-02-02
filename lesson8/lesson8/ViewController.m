//
//  ViewController.m
//  lesson8
//
//  Created by Leiyou Who on 2/2/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong,nonatomic) UIDynamicAnimator *animator;
@property (strong,nonatomic) UIGravityBehavior *gravity;
@property (strong,nonatomic) UICollisionBehavior *collider;
@end

@implementation ViewController

- (UIDynamicAnimator *)animator
{
    if (_animator == nil) {
        _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.gameView];
    }
    return _animator;
}

- (UIGravityBehavior *)gravity
{
    if (_gravity == nil) {
        _gravity = [[UIGravityBehavior alloc] init];
        _gravity.magnitude = 0.9;
        [self.animator addBehavior:_gravity];
    }
    return _gravity;
}

- (UICollisionBehavior *)collider
{
    if (!_collider) {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
        [self.animator addBehavior:_collider];
    }
    return _collider;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//点击屏幕，掉落方块
- (IBAction)tap:(UITapGestureRecognizer *)sender {
    [self drop];
}

//初始掉落方块的大小
static const CGSize DROP_SIZE = {40,40};

- (void)drop
{
    //初始化方块
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROP_SIZE;
    
    //随机掉落位置，并使掉落位置在方格内
    int x = (arc4random() % (int)self.gameView.bounds.size.width) / frame.size.width;
    frame.origin.x = x * frame.size.width;
    
    //构造掉落方块视图
    UIView *dropView = [[UIView alloc] initWithFrame:frame];
    dropView.backgroundColor = [self randomColor];
    [self.gameView addSubview:dropView];
    [self.gravity addItem:dropView];
    [self.collider addItem:dropView];
}

- (UIColor *)randomColor{
    switch (arc4random()%5) {
        case 0: return [UIColor greenColor];
        case 1: return [UIColor blueColor];
        case 2: return [UIColor orangeColor];
        case 3: return [UIColor redColor];
        case 4: return [UIColor purpleColor];
    }
    return [UIColor blackColor];
}
@end
