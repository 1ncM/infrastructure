class CreateSwitches < ActiveRecord::Migration[6.0]
  def change
    create_table :switches do |t|
      t.string :name
      t.string :model

      t.timestamps
    end
  end
end
