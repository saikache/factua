class CreateChes < ActiveRecord::Migration
  def change
    create_table :ches do |t|
      t.string :content

      t.timestamps
    end
  end
end
