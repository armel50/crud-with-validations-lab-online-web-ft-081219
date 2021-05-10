<<<<<<< HEAD
require "pry"
class Song < ApplicationRecord
    
    validates :title, presence: true
    validates :title, uniqueness: true

    validates :release_year, presence: true ,inclusion:{in: 0..2019}, :if => :released?
  
    def released?
     true  if self.released
   end
end
=======
class Song < ActiveRecord::Base 
  validates :title, presence: true
  validates :released, inclusion: [true,false]
  
end
>>>>>>> aa44ebe9eb9c1f258f410bc1ba02d2cbc2ce6b61
