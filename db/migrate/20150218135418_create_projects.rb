class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :atos_legal_entity
      t.integer :invoice_code

      t.timestamps
    end
  end
end
