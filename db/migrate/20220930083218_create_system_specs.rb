class CreateSystemSpecs < ActiveRecord::Migration[6.1]
  def change
    create_table :system_specs do |t|
      t.string :ip_address
      t.string :macaddress
      t.string :hostname
      t.string :username
      t.string :manufacturer
      t.string :operating_system
      t.string :os_family
      t.string :distribution
      t.string :distribution_codename
      t.string :kernel
      t.string :kernel_version
      t.string :total_memory
      t.string :total_swap
      t.string :total_storage
      t.string :free_space
      t.string :architecture
      t.string :cpu_architecture
      t.string :processor_family
      t.string :processor_manufacturer
      t.string :processor_version
      t.string :processor_core_count
      t.string :processor_frequency
      t.string :bios_vendor
      t.string :bios_version
      t.string :serial_number
      t.string :product_name
      t.string :system_uuid
      t.string :storage_used
      t.timestamps
    end
  end
end
