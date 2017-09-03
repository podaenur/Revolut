//
//  RVFetchManager.h
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RVFetchManager : NSObject

+ (instancetype)shared;

+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;

- (void)activate;

@end
