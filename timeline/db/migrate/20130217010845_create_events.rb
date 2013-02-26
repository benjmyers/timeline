class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
