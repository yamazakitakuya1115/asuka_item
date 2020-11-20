class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :buy
      t.integer :sell
      t.string :kind
      t.string :name
      t.timestamps
    end
  end
end