//
//  MyScrollView.h
//  MyScrollView
//
//  Created by NICE on 2018-08-13.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView
@property (nonatomic) CGSize *contentSize;
@property (nonatomic) UIPanGestureRecognizer *panGesture;
- (void)handlePanGesture:(UIPanGestureRecognizer*)sender;
@end
