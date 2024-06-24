class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :owner_name
      t.float :balance, default: 0
    end
  end
end
