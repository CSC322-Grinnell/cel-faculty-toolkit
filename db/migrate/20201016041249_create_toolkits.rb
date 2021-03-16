class CreateToolkits < ActiveRecord::Migration[6.0]
  def change
    create_table :toolkits do |t|
      t.text :name
      t.text :url
      t.text :content
      t.timestamps
    end
  end
end
