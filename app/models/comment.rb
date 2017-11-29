class Comment < ApplicationRecord
  belongs_to :topic
  before_save :check_author

  def check_author
    if self.author.blank?
      self.author = 'Anon'
    end 
  end 
  
end
