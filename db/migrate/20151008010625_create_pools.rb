class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|


      t.string :departing
      t.string :arriving
      t.integer :departing_time




      t.timestamps null: false
    end
      #add_index(:departing, :arriving)
      #뭔지는 모르겠지만.. rake aborted라 취소...

  end
end
