class CreateUsers < ActiveRecord::Migration[5.2]

  def change
    create_table :users do |t|
      t.timestamps
      t.string :username, null: false
      # t.integer :authored_polls_id, null: false 
      # t.integer :respondent_id, null: false 

    end
    add_index :users, :username, unique: true
    # add_index :users, :authored_polls_id
    # add_index :users, :respondent_id
  end
end
