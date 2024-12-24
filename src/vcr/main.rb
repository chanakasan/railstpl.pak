source_paths.unshift(File.dirname(__FILE__))

gem_group :test do
  gem 'vcr'
end

directory "templates/support", "spec/support"
directory "templates/dummy", "spec/dummy"

after_bundle do
  git add: "."
  git commit: %(-m 'install vcr')
end
