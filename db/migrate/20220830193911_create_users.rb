class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :username
      t.string :password
      t.string :email
      t.string :availability
      t.string :user_location
      t.string :games_preference
      t.string :skill_level

      t.timestamps
    end
  end
end
