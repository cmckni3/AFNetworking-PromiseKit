//
//  AFHTTPRequestOperation+PromiseKit.h
//  AFNetworking-PromiseKit
//
//  Created by Chris McKnight on 5/29/15.
//  Copyright (c) 2015 Chris McKnight. All rights reserved.
//

#import "AFHTTPRequestOperation.h"

@class PMKPromise;

@interface AFHTTPRequestOperation (PromiseKit)

+ (PMKPromise *)promise:(NSURLRequest *)request;

@end
