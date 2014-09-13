class CreateCups < ActiveRecord::Migration
  def change
    create_table :cups do |t|
      t.integer :person_id
      t.integer :event_id
      t.boolean :brought_cup

      t.timestamps
    end
  end
end
