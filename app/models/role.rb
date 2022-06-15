class Role < ActiveRecord::Base 
  has_many :auditions

  def actors 
    self.auditions.map {|a| a.actor}
  end 

  def locations
    self.auditions.map {|a| a.location}
  end 

  def lead
    t =  self.auditions.filter {|a| a.hired == true}
    t.count == 0 ? 'no actor has been hired for this role' : t[0] ;
  end 

  def understudy
    t =  self.auditions.filter {|a| a.hired == true}
    t.count > 1  ? t[1] : 'no actor has been hired for understudy for this role' ;
  end  
end 