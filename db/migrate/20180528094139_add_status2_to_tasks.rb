class AddStatus2ToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :status, :string
  end
end