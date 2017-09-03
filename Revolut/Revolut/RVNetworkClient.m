//
//  RVNetworkClient.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 03/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "RVNetworkClient.h"

@interface RVNetworkClient ()

@property (nonatomic, copy) NSURL *URL;
@property (nonatomic, strong) NSURLRequest *request;
@property (nonatomic, strong) NSURLSession *session;

@end

@implementation RVNetworkClient

#pragma mark - Life cycle

- (instancetype)initWithURL:(NSURL *)anURL {
    NSAssert(anURL != nil, @"URL in nil. Manager expect URL like http://domain.name/.../filename.xml");
    
    self = [super init];
    if (self) {
        self.URL = anURL;
        NSURLSessionConfiguration *config = NSURLSessionConfiguration.defaultSessionConfiguration;
        self.session = [NSURLSession sessionWithConfiguration:config];
    }
    return self;
}

#pragma mark - Custom Accessors

- (NSURLRequest *)request {
    if (!_request) {
        _request = [NSURLRequest requestWithURL:self.URL];
    }
    return _request;
}

#pragma mark - Public

//TODO: сделать очередность и проверку статуса дабы избежать конкуренции
- (void)executeWithCompletion:(RVNetworkClientResponse)completion {
    NSURLSessionDataTask *task = [self.session dataTaskWithRequest:self.request completionHandler:completion];
    [task resume];
}

@end
