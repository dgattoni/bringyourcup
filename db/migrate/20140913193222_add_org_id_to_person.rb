class AddOrgIdToPerson < ActiveRecord::Migration
  def change
    add_column :people, :org_id, :integer
  end
end
