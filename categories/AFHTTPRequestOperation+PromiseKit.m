//
//  AFHTTPRequestOperation+PromiseKit.m
//  AFNetworking-PromiseKit
//
//  Created by Chris McKnight on 5/29/15.
//  Copyright (c) 2015 Chris McKnight. All rights reserved.
//

#import "AFHTTPRequestOperation+PromiseKit.h"
#import <PromiseKit/PromiseKit.h>

@implementation AFHTTPRequestOperation (PromiseKit)

+ (PMKPromise *)promise:(NSMutableURLRequest *)request {
    return [PMKPromise new:^(PMKFulfiller resolve, PMKRejecter reject) {
        id operation = [[[self class] alloc] initWithRequest:request];
        [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
            resolve(PMKManifold(operation, responseObject));
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            id userInfo = error.userInfo.mutableCopy ?: [NSMutableDictionary new];
            if (operation) userInfo[PMKURLErrorFailingDataKey] = operation;
            error = [NSError errorWithDomain:error.domain code:error.code userInfo:userInfo];
            reject(error);
        }];
        [(AFHTTPRequestOperation *)operation start];
    }];
}

@end
