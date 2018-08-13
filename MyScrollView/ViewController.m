//
//  ViewController.m
//  MyScrollView
//
//  Created by NICE on 2018-08-13.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (nonatomic, weak) UIView *grayView;
@property (nonatomic, weak) UIView *redView;
@property (nonatomic, weak) UIView *greenView;
@property (nonatomic, weak) UIView *blueView;
@property (nonatomic, weak) UIView *yellowView;
@property (nonatomic, strong) MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // grayView
    UIView *grayView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    grayView.backgroundColor = UIColor.grayColor;
    [self.view addSubview: grayView];
    self.grayView = grayView;
    
    // redView
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = UIColor.redColor;
    [self.grayView addSubview: redView];
    self.redView = redView;
    
    // greenView
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = UIColor.greenColor;
    [self.grayView addSubview: greenView];
    self.greenView = greenView;
    
    // blueView
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = UIColor.blueColor;
    [self.grayView addSubview: blueView];
    self.blueView = blueView;
    
    // yellowView
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = UIColor.yellowColor;
    [self.grayView addSubview: yellowView];
    self.yellowView = yellowView;
    
    self.scrollView = [[MyScrollView alloc] init];
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self.scrollView action:@selector(handlePanGesture:)];
    [self.grayView addGestureRecognizer:panGesture];
}


- (void)viewDidAppear:(BOOL)animated {
    [self.view setFrame:CGRectMake(0, -100, self.view.frame.size.width, self.view.frame.size.height)];
}

@end
