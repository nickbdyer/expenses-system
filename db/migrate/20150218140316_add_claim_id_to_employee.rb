class AddClaimIdToEmployee < ActiveRecord::Migration
  def change
    add_reference :employees, :claim, index: true
  end
end
