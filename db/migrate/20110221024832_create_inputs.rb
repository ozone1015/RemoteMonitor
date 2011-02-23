class CreateInputs < ActiveRecord::Migration
  def self.up
    create_table :inputs do |t|
      t.integer :node_id
      t.string :name
      t.string :pin
      t.string :unit
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :inputs
  end
end
