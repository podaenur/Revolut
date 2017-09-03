//
//  RVFetchManager.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "RVFetchManager.h"

#if DEBUG
static NSTimeInterval const kRVFetchManagerRepeat = 10;
#else
static NSTimeInterval const kRVFetchManagerRepeat = 30;
#endif

@interface RVFetchManager ()

@property (nonatomic, strong) NSTimer *refetchTimer;

@end

@implementation RVFetchManager

#pragma mark - Life cycle

+ (instancetype)shared {
    static RVFetchManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[RVFetchManager alloc] rv_init];
    });
    return manager;
}

- (instancetype)rv_init {
    return [super init];
}

#pragma mark - Public

- (void)activate {
    if (self.refetchTimer) {
        return;
    }
    
    [self handleTimerIvent];
    
    self.refetchTimer = [NSTimer scheduledTimerWithTimeInterval:kRVFetchManagerRepeat
                                                         target:self
                                                       selector:@selector(handleTimerIvent)
                                                       userInfo:nil
                                                        repeats:YES];
}

#pragma mark - Private

- (void)handleTimerIvent {
    NSLog(@"%f", [NSDate date].timeIntervalSinceNow);
}

@end
