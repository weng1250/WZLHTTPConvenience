Pod::Spec.new do |s|
  s.name             = 'WZLHTTPConvenience'
  s.version          = '1.0.0'
  s.summary          = 'A convenient and free server for iOS http request development, providing an always-working testing service for your HTTP request.'
  s.description      = <<-DESC
                       An easy tool to show different styles of UIView objects without the need for subclassing.
                       DESC
  s.homepage         = 'https://github.com/weng1250/WZLHTTPConvenience'
  s.license          = { :type => 'None', :file => 'LICENSE' }
  s.author           = { 'Zilin Weng翁子林' => "zilin_weng@163.com" } 
  s.source           = { :git => 'https://github.com/weng1250/WZLHTTPConvenience.git', :tag => s.version }
  s.platform         = :ios, '5.0'
  s.requires_arc     = true
	
  s.source_files     = 'WZLHTTPConvenience/*.{h,m}'
  s.public_header_files = 'WZLHTTPConvenience/**/*.{h}'

  s.frameworks          = 'UIKit'
end
