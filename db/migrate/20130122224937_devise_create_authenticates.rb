class DeviseCreateAuthenticates < ActiveRecord::Migration
  def self.up
    create_table(:authenticates) do |t|
      t.database_authenticatable :null => false
     # t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

      t.timestamps
    end

    add_index :authenticates, :email,                :unique => true
    add_index :authenticates, :confirmation_token,   :unique => true
    add_index :authenticates, :reset_password_token, :unique => true
    # add_index :authenticates, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :authenticates
  end
end
