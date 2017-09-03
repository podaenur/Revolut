//
//  RVNetworkClient.h
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^RVNetworkClientResponse)(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error);

@interface RVNetworkClient : NSObject

@property (nonatomic, copy, nullable) RVNetworkClientResponse completion;

- (instancetype)initWithURL:(NSURL *)anURL;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

- (void)executeWithCompletion:(RVNetworkClientResponse)completion;

@end

NS_ASSUME_NONNULL_END
