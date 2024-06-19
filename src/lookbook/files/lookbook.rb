Rails.application.configure do
  # branding
  config.lookbook.project_name = "Project"
  # config.lookbook.project_logo = "<svg>...</svg>"
  # config.lookbook.ui_favicon = "<svg>...</svg>"

  # other
  config.lookbook.preview_inspector.sidebar_panels = [:pages, :previews]
  config.lookbook.preview_disable_error_handling = true

  # previews
  config.lookbook.preview_collection_label = "Component Previews"
  config.lookbook.preview_paths = ["lookbook/previews"]

  # pages
  config.lookbook.page_collection_label = "Docs"
  config.lookbook.page_paths = ["lookbook/docs"]
  config.lookbook.page_route = "_a"
  config.lookbook.page_options = {
    footer: true,
    data: {
      brand_colors: {
        red: "#ff0000"
      }
    }
  }

  # markdown
  config.lookbook.markdown_options = {
    tables: false,
  }
end