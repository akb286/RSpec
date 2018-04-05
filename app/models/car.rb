class Car < ApplicationRecord
  validates :make, uniqueness: true, presence: true

  def self.by_model
    order(:model)
 end

 def self.by_price(direction = :asc)
   order(price: direction)
 end

 def honk
   'BEEP BEEP'
 end

 def info
   {
     make: self.make,
     model: self.model,
     color: self.price,
     price: self.color
   }
 end

 def paint
   self.update(color: color)
 end


end
