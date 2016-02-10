# AFNetworking-PromiseKit
[![Version](https://img.shields.io/cocoapods/v/AFNetworking-PromiseKit.svg?style=flat)](http://cocoapods.org/pods/AFNetworking-PromiseKit)
[![License](https://img.shields.io/cocoapods/l/AFNetworking-PromiseKit.svg?style=flat)](http://cocoapods.org/pods/AFNetworking-PromiseKit)
[![Platform](https://img.shields.io/cocoapods/p/AFNetworking-PromiseKit.svg?style=flat)](http://cocoapods.org/pods/AFNetworking-PromiseKit)

Wrapper for the AFHTTPRequestOperation class to return a PromiseKit promise.

Promises clean up the structure of code and provide better data flow
and error handling especially when using asynchronous methods.

## Requirements
* [AFNetworking 1.x](https://github.com/AFNetworking/AFNetworking)
* [PromiseKit 1.x](https://github.com/mxcl/PromiseKit)


### Supported Platforms
* iOS 6.0+
* OS X 10.7+

## Installation

### Install via [CocoaPods](https://github.com/cocoapods/cocoapods)

* Add the library to `Podfile`
  ```ruby
  platform :ios, '6.0'

  pod 'AFNetworking-PromiseKit'
  ```

* Install pod
   ```bash
   pod install
   ```

### Manual

* Drop `AFHTTPRequestOperation+PromiseKit.h`, `AFHTTPRequestOperation+PromiseKit.m`,
and `AFNetworking-PromiseKit.h` into an XCode project with AFNetworking
and set the appropriate targets.

## Usage

### Import the category

* Manual install
  ```objective-c
  #import "AFNetworking-PromiseKit.h"
  ```

* CocoaPods install
  ```objective-c
  #import <AFNetworking-PromiseKit/AFNetworking-PromiseKit.h>
  ```

### Call a typical `AFHTTPRequestOperation` operation class method and use the resulting promise.
  ```objective-c
  NSMutableURLRequest *request = [[AFClient sharedClient] requestWithMethod:@"GET" path:@"/test.json" parameters:nil];

  [AFJSONRequestOperation promise:request].then(^(AFHTTPRequestOperation *operation, id JSON){
    NSLog(@"Received: %@", JSON);
  }).catch(^(NSError *error){
    NSLog(@"Received an error: %@", error);
  });
  ```

## License

[AFNetworking-PromiseKit](https://github.com/cmckni3/AFNetworking-PromiseKit) is licensed under the MIT license. Please see the [license](MIT-LICENSE) for more information.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
