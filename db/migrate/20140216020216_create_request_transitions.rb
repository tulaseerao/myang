class CreateRequestTransitions < ActiveRecord::Migration
  def change
    create_table :request_transitions do |t|
      t.string :to_state
      t.text :metadata, default: "{}"
      t.integer :sort_key
      t.integer :request_id
    end

    add_index :request_transitions, :request_id
    add_index :request_transitions, [:sort_key, :request_id], unique: true
  end
end
