#
# Be sure to run `pod lib lint AXENYA-TOOLS-IOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

zipfile = "#{__dir__}/AXENYA-TOOLS/AXENYA-TOOLS-IOS.zip"

Pod::Spec.new do |s|
  s.name             = 'AXENYA-TOOLS-IOS'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AXENYA-TOOLS-IOS.'
  s.description      =
    <<-DESC
        TODO: Add long description of the pod here.
    DESC

  s.homepage         = 'https://www.axenya.com'
  # s.social_media_url = ''
  s.license          = { :type => 'Copyright', :file => 'LICENSE' }
  s.author           = { 'jose@socialdiabetes.com' => 'jose@socialdiabetes.com' }
  
  #s.source           = { :http => 'file:' + __dir__ + '/AXENYA-TOOLS/AXENYA-TOOLS-IOS.zip' }
  system("rm -rf #{zipfile} && zip -r #{zipfile} #{__dir__} > /dev/null")
  s.source = { :http => "file://#{zipfile}"}
  s.source_files   = '**/AXENYA_TOOLS_IOS.framework/**/*.{h,m,swift}'
  s.preserve_paths = '**/*.{h,m,swift}'
  s.public_header_files = '**/*.h'
  s.vendored_frameworks = '**/AXENYA_TOOLS_IOS.framework'
  s.ios.frameworks = 'Foundation'
  s.ios.deployment_target = '12.0'
  
  # s.resource_bundles = {
  #   'AXENYA-TOOLS-IOS' => ['./AXENYA-TOOLS/Assets/*.png']
  # }

  # s.dependency 'AFNetworking', '~> 2.3'
  
  #
  #s.source           =
  #  {
  #      :git => 'https://github.com/SocialDiabetes/AXENYA-TOOLS-IOS.git',
  #      :tag => s.version.to_s
  #  }
end

