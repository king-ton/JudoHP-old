class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :role_id
      t.integer :article, :default => 0
      t.integer :permission, :default => 0
      t.integer :role, :default => 0
      t.integer :user, :default => 0

      t.timestamps
    end
  end
end
