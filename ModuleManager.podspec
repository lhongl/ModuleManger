

Pod::Spec.new do |s|


  s.name         = "ModuleManager"
  s.version      = "0.0.1"
  s.summary      = "all kinds of categories for iOS develop"

  s.description  = <<-DESC
                      this project provide all kinds of categories for iOS developer 
                   DESC

  s.homepage     = "https://github.com/lihongliangAndliyan/ModuleManager"

  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "lihongliangAndliyan" => "wf201506@163.com" }


  s.platform     = :ios

  s.source       = { :git => "https://github.com/lihongliangAndliyan/ModuleManager.git", :tag => "0.0.1" }


  s.source_files  = "Classes", "*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "MeTest/Classes/UIKit/UI_Categories.h","MeTest/Classes/Foundation/Foundation_Category.h","MeTest/Classes/**/*.h"

  s.requires_arc = true


end
