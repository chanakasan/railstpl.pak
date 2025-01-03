source_paths.unshift(File.dirname(__FILE__))

run "bundle add polaris_view_components"
rails_command "polaris_view_components:install"

directory "templates/views/layouts", "app/views/layouts"
directory "templates/views/shared", "app/views/shared"

inject_into_class "app/controllers/application_controller.rb", "ApplicationController" do %Q{
  layout "polaris_app"

}
end

git add: "."
git commit: %Q{ -m "script: polaris" }
