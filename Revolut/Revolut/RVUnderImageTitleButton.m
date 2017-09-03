//
//  RVUnderImageTitleButton.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "RVUnderImageTitleButton.h"

@implementation RVUnderImageTitleButton

#pragma mark - Life cycle

+ (instancetype)buttonWithType:(UIButtonType)buttonType {
    id button = [super buttonWithType:buttonType];
    [button initialSetup];
    return button;
}

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

#pragma mark - Private

- (void)initialSetup {
    //  (CGFloat top, CGFloat left, CGFloat bottom, CGFloat right)
    self.imageEdgeInsets = UIEdgeInsetsMake(0.f, 0.f, 0.f, 0.f);
    self.titleEdgeInsets = UIEdgeInsetsMake(0.f, 0.f, 0.f, 0.f);
}

@end
