class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :request_type
      t.string :requester
      t.string :organization
      t.string :site
      t.string :unit
      t.date :start_date
      t.date :end_date
      t.text :notes

      t.timestamps
    end
  end
end
