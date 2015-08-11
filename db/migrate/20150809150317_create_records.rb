class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :date
      t.string :horse
      t.float :hours
      t.text :activity
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
