class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
    end
  end
end
