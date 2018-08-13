//
//  ViewController.m
//  MyScrollView
//
//  Created by NICE on 2018-08-13.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) UIView *whiteView;
@property (nonatomic, weak) UIView *redView;
@property (nonatomic, weak) UIView *greenView;
@property (nonatomic, weak) UIView *blueView;
@property (nonatomic, weak) UIView *yellowView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // whiteView
    UIView *whiteView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview: whiteView];
    self.whiteView = whiteView;
    
    // redView
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = UIColor.redColor;
    [self.view addSubview: redView];
    self.redView = redView;
    
    // greenView
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = UIColor.greenColor;
    [self.view addSubview: greenView];
    self.greenView = greenView;
    
    // blueView
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = UIColor.blueColor;
    [self.view addSubview: blueView];
    self.blueView = blueView;
    
    // yellowView
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = UIColor.yellowColor;
    [self.view addSubview: yellowView];
    self.yellowView = yellowView;
}




@end
