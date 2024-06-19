unless yes?("Install rspec-rails ? ")
  say "Aborted"
  return
end

source_paths.unshift(File.dirname(__FILE__))

gem_group :development, :test do
  gem 'rspec-rails', '~> 6.1.0'
end

copy_file "templates/.rspec", ".rspec"
directory "templates/spec", "spec"

after_bundle do
  run "bundle binstubs rspec-core"
  git add: "."
  git commit: %(-m 'install rspec')
end
