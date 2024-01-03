Kaminari.configure do |config|
  config.param_name = :page_index
  # config.theme = 'bootstrap-5'
  # config.pagination_class = "pagination-sm flex-wrap justify-content-center"
  # config.nav_class = "d-flex justify-content-center"
  config.outer_window = 3
  config.window = 2
  config.left = 1
  config.right = 1
end
