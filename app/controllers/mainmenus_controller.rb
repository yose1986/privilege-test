class MainmenusController < ApplicationController


  def mainmenu
    if user_signed_in? && session[:filtered_menus].blank?
      mainmenus = Mainmenu.new
      session[:filtered_menus] = mainmenus.get_filtered_menus(current_user)
    end
  end

  def menuadmin
    if user_signed_in?
      menu = Mainmenu.new
    else
      redirect_to root_url
    end
  end

  def useradmin

  end

  def regularmenu

  end

  def userprivate

  end

end
