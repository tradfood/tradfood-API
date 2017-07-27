class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  private
  def name_downcase!
    # Downcase the name
    self.name.downcase!
    # Remove - if there is for the slug compatibility
    self.name = self.name.gsub('-', ' ')
  end

end
