class MainmenusController < ApplicationController

  def mainmenu
    if user_signed_in? && @filteredmenus.blank?
      mainmenus = Mainmenu.new
      @filteredmenus = mainmenus.get_filtered_menus(current_user)
    end
    puts "CURRENT USERS==="+ current_user.inspect()
  end

  def menuadmin
    if user_signed_in?
      menu = Mainmenu.get_menu("menuadmin")
    else
      redirect_to root_url
    end
  end

end
