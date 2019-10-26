Pod::Spec.new do |spec|

  spec.name         = "CarouselButtons"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift."

  spec.description  = <<-DESC
  This CarouselButtons library helps you to have a carousel of buttons.
                     DESC
  
  spec.homepage     = "http://telotechnology.com"
 
  spec.license      = "MIT"
  spec.author             = { "Rudi Luis" => "rudi.luis@telotechnology.com" }
  spec.social_media_url   = "https://www.instagram.com/telotechnology/"

  spec.ios.deployment_target = "11.0"
  spec.swift_version = "5"

  spec.source       = { :git => "https://github.com/TeloTechnology/CarouselButtons.git", :tag => "#{spec.version}" }
  spec.source_files  = "CarouselButtons/**/*.{h,m,swift}"
  spec.resources = 'CarouselButtons/**/*.{nib,xib,storyboard,font,png,jpeg,jpg,svg,json,strings}'

end
