class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :first_name
      t.string :last_name
      t.integer :clmp_number
      t.string :body_name
      t.string :body_id
      t.string :site_number
      t.integer :contact_id
      t.float :lake_depth
      t.string :county
      t.string :phone_1
      t.string :phone_2
      t.string :email
      t.boolean :previous_year

      t.timestamps
    end
  end
end
