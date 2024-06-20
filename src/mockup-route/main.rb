source_paths.unshift(File.dirname(__FILE__))

directory "templates/controllers", "app/controllers"
directory "templates/views", "app/views"

inject_into_file "config/routes.rb", before: /^end/ do %Q{
  get '/mockup', to: redirect('/mockup/demos')
  namespace :mockup do
    resources :demos, only: %i[index show]
  end
}
end

after_bundle do
  git add: "."
  git commit: %Q{ -m "add mockup route" }
end
