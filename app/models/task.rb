class Task < ApplicationRecord
  def laundry?
    return true if title.downcase.include?("laundry")
  end 
end 