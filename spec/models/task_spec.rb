require "rails_helper"

RSpec.describe Task, type: :model do 
  describe "instance methods" do 
    describe "#laundry?" do 
      it "returns a boolean based on whether or not laundry is in the title or description" do 
        task = Task.create!(title: "Laundry", description: "Clean clothes")

        expect(task.laundry?).to be(true)
      end
    end 
  end 
end 