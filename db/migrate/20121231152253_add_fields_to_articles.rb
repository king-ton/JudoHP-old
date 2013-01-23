class AddFieldsToArticles < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.string :heading
      t.text :content
    end
  end
end
