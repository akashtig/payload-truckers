class AddCompanyIdToTrucks < ActiveRecord::Migration[6.1]
  def change
    add_column :trucks, :company_id, :integer
    add_index :trucks, :company_id
  end
end
