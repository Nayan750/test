class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
