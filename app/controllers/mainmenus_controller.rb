class MainmenusController < ApplicationController
  before_action :check_access, except: [:mainmenu, :edit, :update]

  def mainmenu
    if user_signed_in? && session[:filtered_menus].blank?
      mainmenus = Mainmenu.new
      session[:filtered_menus] = mainmenus.get_filtered_menus(current_user)
    end
  end

  def menuadmin
    @mainmenus = Mainmenu.all
    @menu = Mainmenu.new
  end

  def useradmin

  end

  def regularmenu

  end

  def userprivate

  end

  def edit
    if user_signed_in? && current_user.role_id == 1
      @menu = Mainmenu.where(:id => params[:id]).first
    end
  end

  def update
    puts "-------------------------------------"
    puts params.inspect()
    puts "-------------------------------------"
  end

  def is_method_allowed?(method, filtered_menus)
    method_names = []
    filtered_menus.each do |menu|
      method_names << menu["name"]
    end
    return method_names.include?(method)
  end

  def check_access
    unless user_signed_in? && is_method_allowed?(params[:action],session[:filtered_menus])
      redirect_to root_url
    end
  end
end
