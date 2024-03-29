#
# Be sure to run `pod lib lint SwiftyCountryPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyCountryPicker'
  s.version          = '1.0.0'
  s.summary          = 'Show a country picker to choose the country.'
  s.swift_version = '4.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Show a country picker to choose the country. You can add your own done button above the picker to get the selected country.
                       DESC

  s.homepage         = 'https://github.com/anpkmr/SwiftyCountryPicker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anpkmr' => 'anup227kumar@evontech.com' }
  s.source           = { :git => 'https://github.com/anpkmr/SwiftyCountryPicker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  s.static_framework = true
  s.resources = "SwiftyCountryPicker/Assets/*"
  s.source_files = 'SwiftyCountryPicker/Classes/**/*'
  
   s.resource_bundles = {
       'SwiftyCountryPicker' => ['SwiftyCountryPicker/Assets/*{.png,.plist}','SwiftyCountryPicker/Classes/**/*']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
