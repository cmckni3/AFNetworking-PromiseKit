# AFNetworking-PromiseKit


## Requirements
* [AFNetworking 1.x](https://github.com/AFNetworking/AFNetworking)
* [PromiseKit 1.x](https://github.com/mxcl/PromiseKit)


### Supported Platforms
* iOS 6.0+
* OS X 10.7+

## Installation

* Install via [cocoapods](https://github.com/cocoapods/cocoapods)

```ruby
platform :ios, '6.0'

pod 'AFNetworking-PromiseKit'
```

## Usage

* Import the category

```objective-c
#import "AFHTTPRequestOperation+PromiseKit.h"
```

* Call a typical `AFHTTPRequestOperation` operation class method
and use the resulting promise.

```objective-c
NSMutableURLRequest *request = [[AFClient sharedClient] requestWithMethod:@"GET" path:@"/test.json" parameters:nil];

[AFJSONRequestOperation promise:request].then(^(AFHTTPRequestOperation *operation, id JSON){
  NSLog(@"Received: %@", JSON);
}).catch(^(NSError *error){
  NSLog(@"Received an error: %@", error);
});
``` 

## License

AFNetworking-PromiseKit is licensed under the MIT license. Please see the [license](MIT-LICENSE) for more information.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

