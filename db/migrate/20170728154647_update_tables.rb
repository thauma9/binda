class UpdateTables < ActiveRecord::Migration[5.1]
  
  def change
    remove_column   :binda_settings, :content, :text
    remove_column   :binda_settings, :is_true, :boolean, default: false
    add_reference   :binda_settings, :structure, index: true
    add_column      :binda_structures, :instance_type, :string, null: false
    # rename_table  :binda_settings, :binda_boards
  end

end