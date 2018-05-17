class RemoveBreaktimeToWorktimes < ActiveRecord::Migration[5.1]
  def change
    remove_column :worktimes, :start_breaktime
    remove_column :worktimes, :end_breaktime
  end
end
