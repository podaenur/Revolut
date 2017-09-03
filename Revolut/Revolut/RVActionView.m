//
//  RVActionView.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 02/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "RVActionView.h"

@implementation RVActionView

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

#pragma mark - Actions

- (IBAction)onTopUp:(UIButton *)sender {
    [self.delegate actionViewDidPressTopUp:self];
}

- (IBAction)onExchange:(UIButton *)sender {
    [self.delegate actionViewDidPressExchange:self];
}

- (IBAction)onBank:(UIButton *)sender {
    [self.delegate actionViewDidPressBank:self];
}

#pragma mark - Private

- (void)initialSetup {
    RVActionView *view = (RVActionView *)[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
    view.autoresizingMask = ( UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight );
    view.frame = self.bounds;
    [self addSubview:view];
}

@end
