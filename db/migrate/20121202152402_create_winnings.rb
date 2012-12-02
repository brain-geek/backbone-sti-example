class CreateWinnings < ActiveRecord::Migration
  def change
    create_table :winnings do |t|
      t.datetime :date_start
      t.datetime :date_end
      t.boolean :availibility_weekday_mon, default: false
      t.boolean :availibility_weekday_tue, default: false
      t.boolean :availibility_weekday_wed, default: false
      t.boolean :availibility_weekday_thu, default: false
      t.boolean :availibility_weekday_fri, default: false
      t.boolean :availibility_weekday_sat, default: false
      t.boolean :availibility_weekday_sun, default: false
      t.integer :availible_hours_start
      t.integer :availible_hours_end
      t.integer :x
      t.string :measure
      t.string :type

      t.timestamps
    end
  end
end
