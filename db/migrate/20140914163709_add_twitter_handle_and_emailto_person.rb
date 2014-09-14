class AddTwitterHandleAndEmailtoPerson < ActiveRecord::Migration
  def change
    add_column :people, :email, :string
    add_column :people, :twitter, :string
  end
end
