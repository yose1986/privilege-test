module ApplicationHelper

  def check_access_lvl(access_lvl,role_id)
    if access_lvl.present?
      levels = access_lvl.split(",").map { |s| s.to_i }
      return levels.include?(role_id)
    end
  end
end
