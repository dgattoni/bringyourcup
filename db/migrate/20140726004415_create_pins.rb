class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.string :photo

      t.timestamps
    end
  end
end
