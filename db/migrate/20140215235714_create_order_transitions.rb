class CreateOrderTransitions < ActiveRecord::Migration
  def change
    create_table :order_transitions do |t|
      t.string :to_state
      t.text :metadata, default: "{}"
      t.integer :sort_key
      t.integer :order_id
    end

    add_index :order_transitions, :order_id
    add_index :order_transitions, [:sort_key, :order_id], unique: true
  end
end
