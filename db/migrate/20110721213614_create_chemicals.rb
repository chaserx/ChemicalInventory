class CreateChemicals < ActiveRecord::Migration
  def change
    create_table :chemicals do |t|
      t.string   "name"
      t.string   "amount"
      t.integer  "quantity"
      t.string   "location"
      t.string   "storage"
      t.text     "notes"
      t.string   "formula"
      t.string   "cas"
      t.string   "supplier"
      t.string   "catalognumber"
      t.string   "smiles"
      t.string   "inchi"
      t.string   "msds_file_name"
      t.string   "msds_content_type"
      t.integer  "msds_file_size"
      t.datetime "msds_updated_at"
      
      t.timestamps
    end
  end
end
