class AddNameDescPbPsLevelToWeapon < ActiveRecord::Migration[7.0]
  def change
    add_column :weapons, :name, :string
    add_column :weapons, :description, :string
    add_column :weapons, :pb, :integer
    add_column :weapons, :ps, :integer
    add_column :weapons, :level, :integer
  end
end
