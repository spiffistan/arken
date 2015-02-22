module ApplicationHelper

  def entypo_icon(name)
    "<i class='icon e-icon-#{name}'></i> ".html_safe
  end
end
