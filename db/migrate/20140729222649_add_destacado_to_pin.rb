class AddDestacadoToPin < ActiveRecord::Migration
  def change
    add_column :pins, :destacado, :text
  end
end
