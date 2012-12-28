class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :image
      t.date :dob
      t.integer :bank, default: 0
      t.integer :total, default: 0
      t.integer :age, default: 0

      t.timestamps
    end
  end
end
