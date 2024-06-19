source_paths.unshift(File.dirname(__FILE__))

gem 'sidekiq'

copy_file "templates/sidekiq", "app"

after_bundle do
  run "bundle binstubs sidekiq"
  git add: "."
  git commit: %(-m 'install sidekiq')
end
