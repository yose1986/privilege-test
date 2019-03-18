class MainmenusController < ApplicationController
  before_action :check_access, except: :mainmenu

  def mainmenu
    if user_signed_in? && session[:filtered_menus].blank?
      mainmenus = Mainmenu.new
      session[:filtered_menus] = mainmenus.get_filtered_menus(current_user)
    end
  end

  def menuadmin

  end

  def useradmin

  end

  def regularmenu

  end

  def userprivate

  end

  def is_method_allowed?(method, filtered_menus)
    method_names = []
    filtered_menus.each do |menu|
      method_names << menu["name"]
    end
    return method_names.include?(method)
  end

  def check_access
    unless user_signed_in? && !is_method_allowed?(__method__.to_s,session[:filtered_menus])
      redirect_to root_url
    end
  end
end
