Pod::Spec.new do |s|
  s.name         = "CFStatusBarHUD"
  s.version      = "0.0.1"
  s.summary      = 'An easy-to-use status bar indicator.'
  s.description  = <<-DESC
			An easy-to-use HUD indicator framework
		     DESC
  s.homepage     = 'https://github.com/ziyilixin'
  s.license      = 'MIT'
  s.author       = { 'CoderCF' => '1559878532@qq.com' }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/ziyilixin/CFStatusBarHUD.git", :tag => s.version }
  s.source_files  = 'CFStatusBarHUD/**/*.{h,m}'
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
end
