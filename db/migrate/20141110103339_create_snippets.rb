class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :name
      t.text :plain_code
      t.text :highlighted_code
      t.string :language

      t.timestamps
    end
  end
end
