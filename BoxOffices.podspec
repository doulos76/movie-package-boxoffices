Pod::Spec.new do |spec|

  spec.name         = "BoxOffices"
  spec.version      = "1.0.2"
  spec.summary      = "영화진흥위원회에서 제공하는 API를 활용해 영화 관련 정보를 가져옵니다."

  spec.description  = <<-DESC
    Movies는 영화진흥위원에서 제공하는 API를 통해 영화 관련 정보들을 쉽게 자져올 수 있게 합니다.
                   DESC

  spec.homepage     = "http://github.com/doulos76/movie-package-boxoffices"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "Minhoi Goo" => "inojyes@gmail.com" }

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  spec.ios.deployment_target = "15.0"
  spec.swift_version = "5.9"

  spec.source       = { 
    :git => "http://github.com/doulos76/movie-package-boxoffices.git", 
    :tag => "#{spec.version}" 
  }

  spec.source_files  = "Sources/BoxOffices/**/*"

end
