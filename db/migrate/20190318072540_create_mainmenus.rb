class CreateMainmenus < ActiveRecord::Migration[5.1]
  def change
    create_table :mainmenus do |t|
      t.string :name
      t.string :access_lvl
    end
  end
end
