//
//  MyScrollView.m
//  MyScrollView
//
//  Created by NICE on 2018-08-13.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (void)handlePanGesture:(UIPanGestureRecognizer*)sender {
    
    CGPoint translationInView = [sender translationInView:sender.view];
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x, oldCenter.y + translationInView.y);
    sender.view.center = newCenter;
    [sender setTranslation:CGPointZero inView:sender.view];

}

@end
