class CreateWorktimes < ActiveRecord::Migration[5.1]
  def change
    create_table :worktimes do |t|
      t.references :user, null: true
      t.datetime :start_time, null: false
      t.datetime :end_time, null: true, default:nil
      t.datetime :start_breaktime, null: false, default:nil
      t.datetime :end_breaktime, null: false, default:nil
      t.boolean :worktimes, :work, default: false
      t.boolean :worktimes, :active, default: false

      t.timestamps
    end
  end
end
