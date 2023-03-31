class CreateSynthwears < ActiveRecord::Migration[7.0]
  def change
    create_table :synthwears do |t|

      t.string :name
      t.integer :price
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
