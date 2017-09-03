//
//  RVAccountController.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "RVAccountController.h"
#import "RVActionView.h"
#import "RVExchangeController.h"

@interface RVAccountController () <RVActionViewDelegate>

@property (weak, nonatomic) IBOutlet RVActionView *actionView;
@property (nonatomic, strong) RVExchangeController *exchangeController;

@end

@implementation RVAccountController

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initialSetup];
}

#pragma mark - Custom Accessors

- (RVExchangeController *)exchangeController {
    if (!_exchangeController) {
        RVExchangeController *controller = [[RVExchangeController alloc] init];
        _exchangeController = controller;
    }
    
    return _exchangeController;
}

#pragma mark - Actions
#pragma mark - Public

#pragma mark - Private

- (void)initialSetup {
    self.actionView.delegate = self;
    self.actionView.backgroundColor = [UIColor clearColor];
}

- (void)openExchangeScreen {
    [self presentViewController:self.exchangeController animated:YES completion:nil];
}

#pragma mark - Segue
#pragma mark - Animations

#pragma mark - Protocol conformance
#pragma mark RVActionViewDelegate

- (void)actionViewDidPressExchange:(RVActionView *)view {
    [self openExchangeScreen];
}

#pragma mark - Notifications handlers
#pragma mark - Gestures handlers
#pragma mark - KVO
#pragma mark - NSCopying
#pragma mark - NSObject

@end
