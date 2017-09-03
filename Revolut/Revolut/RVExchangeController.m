//
//  RVExchangeController.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "RVExchangeController.h"

@interface RVExchangeController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;

@end

@implementation RVExchangeController

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self observingShouldBeActive:YES];
}

- (void)dealloc {
    [self observingShouldBeActive:NO];
}

#pragma mark - Custom Accessors

#pragma mark - Actions

- (IBAction)onCancel:(UIButton *)sender {
    [self close];
}

- (IBAction)onExchange:(UIButton *)sender {
    NSLog(@"Exchanged...");
}

#pragma mark - Public

#pragma mark - Private

- (void)observingShouldBeActive:(BOOL)shouldActivate {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
    if (shouldActivate) {
        [nc addObserver:self
               selector:@selector(handleKeyboardWillChangeFrameNotification:)
                   name:UIKeyboardWillChangeFrameNotification
                 object:nil];
    } else {
        [nc removeObserver:self
                      name:UIKeyboardWillChangeFrameNotification
                    object:nil];
    }
}

- (void)close {
    //TODO: определить как открыт контроллер
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Segue
#pragma mark - Animations
#pragma mark - Protocol conformance

#pragma mark - Notifications handlers

- (void)handleKeyboardWillChangeFrameNotification:(NSNotification *)aNotification {
    NSDictionary *userInfo = aNotification.userInfo;
    
    NSTimeInterval animationDuration = [userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    CGRect frameBegin = [userInfo[UIKeyboardFrameBeginUserInfoKey] CGRectValue];
    CGRect frameEnd = [userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    CGFloat keyboardBeginY = CGRectGetMinY(frameBegin);
    CGFloat keyboardEndY = CGRectGetMinY(frameEnd);
    CGFloat keyboardHeight = CGRectGetHeight(frameEnd);
    
    if (keyboardBeginY - keyboardEndY > 0) {
        self.bottomConstraint.constant += keyboardHeight;
    } else if (keyboardBeginY - keyboardEndY < 0) {
        self.bottomConstraint.constant -= keyboardHeight;
    }
    
    [UIView animateWithDuration:animationDuration animations:^{
        [self.view layoutIfNeeded];
    }];
}

#pragma mark - Gestures handlers
#pragma mark - KVO
#pragma mark - NSCopying
#pragma mark - NSObject

@end
