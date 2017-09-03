//
//  RVCurrencyModel.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "RVCurrencyModel.h"

@implementation RVCurrencyModel

+ (instancetype)modelWithName:(NSString *)aName detail:(NSString *)aDetail rate:(CGFloat)aRate {
    return [[RVCurrencyModel alloc] initWithName:aName detail:aDetail rate:aRate];
}

+ (instancetype)modelWithName:(NSString *)aName rate:(CGFloat)aRate {
    return [[RVCurrencyModel alloc] initWithName:aName detail:nil rate:aRate];
}

- (instancetype)initWithName:(NSString *)aName detail:(NSString *)aDetail rate:(CGFloat)aRate {
    self = [super init];
    if (self) {
        _name = aName;
        _detail = aDetail;
        _rate = aRate;
    }
    return self;
}

@end
