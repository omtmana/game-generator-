class CreateAtendees < ActiveRecord::Migration[7.0]
  def change
    create_table :atendees do |t|
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
