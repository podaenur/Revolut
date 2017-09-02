//
//  RVActionView.h
//  Revolut
//
//  Created by Evgeniy Akhmerov on 02/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RVActionView;

@protocol RVActionViewDelegate <NSObject>

- (void)actionViewDidPressTopUp:(RVActionView *)view;
- (void)actionViewDidPressExchange:(RVActionView *)view;
- (void)actionViewDidPressBank:(RVActionView *)view;

@end

@interface RVActionView : UIView

@property (nonatomic, weak) id <RVActionViewDelegate> delegate;

@end
