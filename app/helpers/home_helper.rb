module HomeHelper
  def is_tab_selected?(page_name)
    "selected" if params[:action] == page_name
  end
end