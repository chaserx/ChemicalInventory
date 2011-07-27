class Chemical < ActiveRecord::Base
  has_attached_file :msds
  
  before_save :capitalize_name
  
  def capitalize_name
    self.name.capitalize!
  end
end
