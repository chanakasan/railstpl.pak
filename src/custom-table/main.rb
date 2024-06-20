source_paths.unshift(File.dirname(__FILE__))

directory "templates/components", "app/components"
directory "templates/helpers", "app/helpers"
directory "templates/views", "app/views"

after_bundle do
  git add: "."
  git commit: %Q{ -m "add custom table component" }
end
