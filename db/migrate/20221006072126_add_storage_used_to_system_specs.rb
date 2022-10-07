class AddStorageUsedToSystemSpecs < ActiveRecord::Migration[6.1]
  def change
    add_column :system_specs, :storage_used, :string
  end
end
