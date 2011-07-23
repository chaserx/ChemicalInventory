class Import < ActiveRecord::Base
  require "csv"
  
  has_attached_file :chemfile
  
  def extract_chemicals_from_chemfile
    
     CSV.foreach(self.chemfile.to_file.path, {:headers => true, :return_headers => true}) do |row|
        
        @chemical = Chemical.create(
          :name => row.field("name"),
          :amount => row.field("amount"),
          :quantity => row.field("quantity"),
          :location => row.field("location"),
          :storage => row.field("storage"),
          :notes => row.field("storage"),
          :formula => row.field("formula"),
          :cas => row.field("cas"),
          :supplier => row.field("supplier"),
          :catalognumber => row.field("catalognumber"),
          :smiles => row.field("smiles"),
          :inchi => row.field("inchi")
        )
        
     end
  end
end
