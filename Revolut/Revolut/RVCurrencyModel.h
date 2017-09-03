//
//  RVCurrencyModel.h
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RVCurrencyModel : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSString *detail;
@property (nonatomic, readonly, assign) CGFloat rate;

+ (instancetype)modelWithName:(NSString *)aName detail:(NSString *)aDetail rate:(CGFloat)aRate;
+ (instancetype)modelWithName:(NSString *)aName rate:(CGFloat)aRate;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

@end
