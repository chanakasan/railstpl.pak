inject_into_class "config/application.rb", "Application" do %Q{
  config.generators do |g|
    g.test_framework :rspec,
                      fixture: false,
                      view_specs: false,
                      request_specs: false,
                      routing_specs: false,
                      helper_specs: false
    g.scaffold_stylesheet false
    g.helper false
    g.assets false
    g.javascripts false
    g.stylesheets false
    g.skip_routes true
  end  

}
end

git add: "config/application.rb"
git commit: %Q{ -m "script: configure generators" }
