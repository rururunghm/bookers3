class Book < ApplicationRecord
  belongs_to :user
  
  validates :title,length: { minimum: 2, maximum: 20 }, presence: true
      
  validates :body,  presence: true
  
end
