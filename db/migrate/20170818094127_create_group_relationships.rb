class CreateGroupRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :group_relationships do |t|
      t.integer :group_id
      t.integer :usr_id

      t.timestamps
    end
  end
end
