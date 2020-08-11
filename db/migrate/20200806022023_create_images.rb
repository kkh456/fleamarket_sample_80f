class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :src
      t.references :product, foreign_key: true
    end
  end
end
