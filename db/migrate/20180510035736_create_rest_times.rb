class CreateRestTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :rest_times do |t|
      t.references :worktime, null: false
      t.datetime :start_time, default:nil, null: false
      t.datetime :end_time, default: nil
      t.timestamps
    end
  end
end
