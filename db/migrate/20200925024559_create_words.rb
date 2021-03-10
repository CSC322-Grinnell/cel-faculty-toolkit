class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.text :word
      t.text :content

      t.timestamps
    end
  end
end
