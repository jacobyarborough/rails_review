class Task < ApplicationRecord
  def laundry?
    return true if title.downcase.include?("laundry") || description.downcase.include?("laundry")
    return false
  end 
end 