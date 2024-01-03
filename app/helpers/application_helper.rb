module ApplicationHelper
  def active_class(route)
    " active" if current_page?(route)
  end
end
