//
//  RVAccountController.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "RVAccountController.h"
#import "RVActionView.h"

@interface RVAccountController () <RVActionViewDelegate>

@property (weak, nonatomic) IBOutlet RVActionView *actionView;

@end

@implementation RVAccountController

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initialSetup];
}

#pragma mark - Custom Accessors
#pragma mark - Actions
#pragma mark - Public

#pragma mark - Private

- (void)initialSetup {
    self.actionView.delegate = self;
    self.actionView.backgroundColor = [UIColor clearColor];
}

#pragma mark - Segue
#pragma mark - Animations

#pragma mark - Protocol conformance
#pragma mark RVActionViewDelegate

- (void)actionViewDidPressTopUp:(RVActionView *)view {
    NSLog(@"Hello world");
}

#pragma mark - Notifications handlers
#pragma mark - Gestures handlers
#pragma mark - KVO
#pragma mark - NSCopying
#pragma mark - NSObject

@end
