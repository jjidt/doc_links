class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :name
      t.belongs_to :category

      t.timestamps
    end
  end
end
