class CreateAldermen < ActiveRecord::Migration[5.2]
  def change
    create_table :aldermen do |t|

      t.timestamps
    end
  end
end
