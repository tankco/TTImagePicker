Pod::Spec.new do |s|
s.name         = "TTImagePicker"
s.version      = "0.0.1"
s.summary      = "一行代码实现拍照，选取图片放大图片等功能"
s.homepage     = "https://github.com/itanchao/TTImagePicker"
#s.screenshots  = "./演示.gif"
s.license      = "MIT"
s.author       = { "谈超" => "itanchao@gmail.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/itanchao/TTImagePicker.git", :tag => s.version }
s.source_files  = "Sauces", "Sauces/*.{swift}"

end
