class Audition < ActiveRecord::Base
  belongs_to :role 

  def call_back
    if self.hired != true
      self.hired = true
      self.save
    end 
  end 
end