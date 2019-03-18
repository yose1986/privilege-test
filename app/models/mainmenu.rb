class Mainmenu < ApplicationRecord

  def get_menu(name)
    menu = Mainmenu.find_by(name: name )
    return menu
  end

  def get_filtered_menus(user)
    all_menus = Mainmenu.all
    filtered_menus = []
    all_menus.each {|m|
       levels = m.access_lvl.split(",").map { |s| s.to_i }
       if levels.include?(user.role_id)
         filtered_menus << m
       end
    }
    return filtered_menus
  end

end
