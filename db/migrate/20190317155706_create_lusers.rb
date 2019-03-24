class CreateLusers < ActiveRecord::Migration[5.0]
  def change
    create_table :lusers do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
