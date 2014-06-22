Pod::Spec.new do |s|
  s.name         = "JBParallaxCell"
  s.version      = "0.0.1"
  s.summary      = "This project provides a parallax effect on a `UIImageView` on a `UITableViewCell` when the table scrolls."
  s.homepage     = "https://github.com/jberlana/JBParallaxCell"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Javier Berlana" => "https://github.com/jberlana" }
  s.source       = { :git => "git@github.com:jberlana/JBParallaxCell.git", :tag => s.version.to_s }
  s.platform     = :ios, '6.0'
  s.source_files = 'JBParallaxCell.{h,m}'
  s.requires_arc = true
end
