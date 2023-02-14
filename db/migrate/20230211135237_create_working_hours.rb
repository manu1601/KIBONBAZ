class CreateWorkingHours < ActiveRecord::Migration[7.0]
  def change
    create_table :working_hours do |t|
      t.string :day
      t.time :opening_hours
      t.time :closing_hours
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
