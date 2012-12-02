class CreateTimeBasedWinnings < ActiveRecord::Migration
  def change
    create_table :time_based_winnings do |t|

      t.timestamps
    end
  end
end
