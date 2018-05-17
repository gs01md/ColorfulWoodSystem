

Pod::Spec.new do |s|

s.name         = "ColorfulWoodSystem"
s.version      = "0.0.0.4"
s.summary      = "获取设备信息"

s.homepage     = "https://github.com/gs01md"

s.license      = "MIT"

s.author       = { "ColorfulWood" => "103377808@qq.com" }

s.source       = { :git => "https://github.com/gs01md/ColorfulWoodSystem.git", :tag => "#{s.version}" }

s.source_files = "ColorfulWoodSystem/ColorfulWoodSystem/CocoapodFiles/*"

s.platform     = :ios, "8.2"

s.frameworks   = 'Foundation'
s.frameworks   = 'ADSupport'
s.frameworks   = 'UIKit'

#s.dependency    'JSONModel',          '~> 1.7.0'


end
