class AlterSnippets < ActiveRecord::Migration
  def change
    change_table :snippets do |t|
      t.belongs_to :category
    end
  end
end
