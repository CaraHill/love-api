class CreateLoveCalculators < ActiveRecord::Migration
  def change
    create_table :love_calculators do |t|

      t.timestamps null: false
    end
  end
end
