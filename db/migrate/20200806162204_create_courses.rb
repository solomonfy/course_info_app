class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.float :credit_hr
      t.datetime :start_date
      t.integer :month_duration

      t.timestamps
    end
  end
end
