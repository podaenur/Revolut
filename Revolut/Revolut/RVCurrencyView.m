//
//  RVCurrencyView.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <iCarousel/iCarousel.h>
#import "RVCurrencyView.h"
#import "RVCurrencyInputField.h"
#import "RVCurrencyDetailLabel.h"

@interface RVCurrencyView ()

@property (weak, nonatomic) IBOutlet iCarousel *currencyCarousel;
@property (weak, nonatomic) IBOutlet RVCurrencyInputField *currencyInputField;
@property (weak, nonatomic) IBOutlet RVCurrencyDetailLabel *currencyAssetLabel;
@property (weak, nonatomic) IBOutlet RVCurrencyDetailLabel *changeRateLabel;
@property (weak, nonatomic) IBOutlet UIPageControl *positionIndicatorView;

@end

@implementation RVCurrencyView

#pragma mark - Life cycle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initialSetup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self initialSetup];
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initialSetup];
    }
    return self;
}

- (BOOL)canBecomeFirstResponder {
    return [self.currencyInputField canBecomeFirstResponder];
}

- (BOOL)becomeFirstResponder {
    return [self.currencyInputField becomeFirstResponder];
}

#pragma mark - Custom Accessors

#pragma mark - Actions

- (IBAction)onAmountChanged:(UITextField *)sender {
    //
}

#pragma mark - Public

#pragma mark - Private

- (void)initialSetup {
    //TODO: extract to RVNibNamedView
    RVCurrencyView *view = (RVCurrencyView *)[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
    view.autoresizingMask = ( UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight );
    view.frame = self.bounds;
    view.backgroundColor = self.superview.backgroundColor;
    [self addSubview:view];
}

#pragma mark - Segue
#pragma mark - Animations
#pragma mark - Protocol conformance
#pragma mark - Notifications handlers
#pragma mark - Gestures handlers
#pragma mark - KVO
#pragma mark - NSCopying
#pragma mark - NSObject

@end
