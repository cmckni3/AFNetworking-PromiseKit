Pod::Spec.new do |s|
  s.name                  = 'AFNetworking-PromiseKit'
  s.version               = '0.2.4'
  s.summary               = 'AFNetworking category for PromiseKit'
  s.description           = <<-DESC
                               Wrapper for the AFHTTPRequestOperation class to
                               return a PromiseKit promise.

                               Promises clean up the structure of code and
                               provide better data flow and error handling
                               especially when using asynchronous methods.
                               DESC
  s.homepage              = 'https://github.com/cmckni3/AFNetworking-PromiseKit'
  s.license               = { :type => "MIT", :file => 'MIT-LICENSE' }
  s.author                = { 'Chris McKnight' => 'cmckni3@gmail.com' }
  s.social_media_url      = 'https://twitter.com/cmckni3'
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'
  s.source                = { :git => 'https://github.com/cmckni3/AFNetworking-PromiseKit.git', :tag => '0.2.4' }
  s.source_files          = 'AFNetworking-PromiseKit'
  s.requires_arc          = true
  s.dependency 'PromiseKit', '~> 1.5'
  s.dependency 'AFNetworking', '~> 1'
end
