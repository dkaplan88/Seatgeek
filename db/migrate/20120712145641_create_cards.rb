class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :number
      t.string :expiration_month
      t.string :expiration_year
      t.string :security_code

      t.timestamps
    end
  end
end
