require "rails_helper"

RSpec.describe Task, type: :model do 
  describe "instance methods" do 
    describe "#laundry?" do 
      it "returns a boolean based on whether or not laundry is in the title or description" do 
        task1 = Task.create!(title: "Laundry", description: "Clean clothes")
        task2 = Task.create!(title: "Grocery Shopping", description: "Get groceries")
        task3 = Task.create!(title: "Clean House", description: "Vacuum floors, do laundry, clean room")

        expect(task1.laundry?).to be(true)
        expect(task2.laundry?).to be(false)
        expect(task3.laundry?).to be(true)
      end
    end 
  end 
end 