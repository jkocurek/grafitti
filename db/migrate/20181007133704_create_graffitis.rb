class CreateGraffitis < ActiveRecord::Migration[5.2]
  def change
    create_table :graffitis do |t|

      t.timestamps
    end
  end
end
