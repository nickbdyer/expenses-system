class AddProjectNameToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :project_name, :string
  end
end
