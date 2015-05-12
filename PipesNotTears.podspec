Pod::Spec.new do |s|
  s.name        = "PipesNotTears"
  s.version     = "0.10.0"
  s.summary     = "More Pipes. Fewer Tears."
  s.homepage    = "https://github.com/mxcl/PipesNotTears"
  s.license     = { :type => "MIT" }

  s.osx.deployment_target = "10.10"
  s.ios.deployment_target = "8.0"
  s.source   = { :git => "https://github.com/mxcl/PipesNotTears.git", :tag => "0.10"}
  s.source_files = ["PipesNotTears.h", "Sources/*.swift"]
  s.requires_arc = true
end