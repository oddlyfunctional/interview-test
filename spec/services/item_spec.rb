require "rails_helper"

RSpec.describe Item do
  context "Normal Item" do
    it "before sell date" do
      item = Item.new(type: "Normal Item", days_remaining: 5, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: 4, quality: 9)
    end

    it "on sell date" do
      item = Item.new(type: "Normal Item", days_remaining: 0, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: -1, quality: 8)
    end

    it "after sell date" do
      item = Item.new(type: "Normal Item", days_remaining: -10, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: -11, quality: 8)
    end

    it "of zero quality" do
      item = Item.new(type: "Normal Item", days_remaining: 5, quality: 0)

      item.tick

      expect(item).to have_attributes(days_remaining: 4, quality: 0)
    end
  end

  context "Gorgonzola cheese" do
    it "before sell date" do
      item = Item.new(type: "Gorgonzola cheese", days_remaining: 5, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: 4, quality: 11)
    end

    it "with max quality" do
      item = Item.new(type: "Gorgonzola cheese", days_remaining: 5, quality: 50)

      item.tick

      expect(item).to have_attributes(days_remaining: 4, quality: 50)
    end

    it "on sell date" do
      item = Item.new(type: "Gorgonzola cheese", days_remaining: 0, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: -1, quality: 12)
    end

    it "on sell date near max quality" do
      item = Item.new(type: "Gorgonzola cheese", days_remaining: 0, quality: 49)

      item.tick

      expect(item).to have_attributes(days_remaining: -1, quality: 50)
    end

    it "on sell date with max quality" do
      item = Item.new(type: "Gorgonzola cheese", days_remaining: 0, quality: 50)

      item.tick

      expect(item).to have_attributes(days_remaining: -1, quality: 50)
    end

    it "after sell date" do
      item = Item.new(type: "Gorgonzola cheese", days_remaining: -10, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: -11, quality: 12)
    end

    it "after sell date with max quality" do
      item = Item.new(type: "Gorgonzola cheese", days_remaining: -10, quality: 50)

      item.tick

      expect(item).to have_attributes(days_remaining: -11, quality: 50)
    end
  end

  context "Gold ring" do
    it "before sell date" do
      item = Item.new(type: "Gold ring", days_remaining: 5, quality: 80)

      item.tick

      expect(item).to have_attributes(days_remaining: 5, quality: 80)
    end

    it "on sell date" do
      item = Item.new(type: "Gold ring", days_remaining: 0, quality: 80)

      item.tick

      expect(item).to have_attributes(days_remaining: 0, quality: 80)
    end

    it "after sell date" do
      item = Item.new(type: "Gold ring", days_remaining: -10, quality: 80)

      item.tick

      expect(item).to have_attributes(days_remaining: -10, quality: 80)
    end
  end

  context "Concert ticket" do
    it "long before sell date" do
      item = Item.new(type: "Concert ticket", days_remaining: 11, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: 10, quality: 11)
    end

    it "long before sell date at max quality" do
      item = Item.new(type: "Concert ticket", days_remaining: 11, quality: 50)

      item.tick

      expect(item).to have_attributes(days_remaining: 10, quality: 50)
    end

    it "medium close to sell date upper bound" do
      item = Item.new(type: "Concert ticket", days_remaining: 10, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: 9, quality: 12)
    end

    it "medium close to sell date upper bound at max quality" do
      item = Item.new(type: "Concert ticket", days_remaining: 10, quality: 50)

      item.tick

      expect(item).to have_attributes(days_remaining: 9, quality: 50)
    end

    it "medium close to sell date lower bound" do
      item = Item.new(type: "Concert ticket", days_remaining: 6, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: 5, quality: 12)
    end

    it "medium close to sell date lower bound at max quality" do
      item = Item.new(type: "Concert ticket", days_remaining: 6, quality: 50)

      item.tick

      expect(item).to have_attributes(days_remaining: 5, quality: 50)
    end

    it "very close to sell date upper bound" do
      item = Item.new(type: "Concert ticket", days_remaining: 5, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: 4, quality: 13)
    end

    it "very close to sell date upper bound at max quality" do
      item = Item.new(type: "Concert ticket", days_remaining: 5, quality: 50)

      item.tick

      expect(item).to have_attributes(days_remaining: 4, quality: 50)
    end

    it "very close to sell date lower bound" do
      item = Item.new(type: "Concert ticket", days_remaining: 1, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: 0, quality: 13)
    end

    it "very close to sell date lower bound at max quality" do
      item = Item.new(type: "Concert ticket", days_remaining: 1, quality: 50)

      item.tick

      expect(item).to have_attributes(days_remaining: 0, quality: 50)
    end

    it "on sell date" do
      item = Item.new(type: "Concert ticket", days_remaining: 0, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: -1, quality: 0)
    end

    it "after sell date" do
      item = Item.new(type: "Concert ticket", days_remaining: -10, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: -11, quality: 0)
    end
  end

  context "Slice of bread" do
    xit "before sell date" do
      item = Item.new(type: "Slice of bread", days_remaining: 5, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: 4, quality: 8)
    end

    xit "before sell date at zero quality" do
      item = Item.new(type: "Slice of bread", days_remaining: 5, quality: 0)

      item.tick

      expect(item).to have_attributes(days_remaining: 4, quality: 0)
    end

    xit "on sell date" do
      item = Item.new(type: "Slice of bread", days_remaining: 0, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: -1, quality: 6)
    end

    xit "on sell date at zero quality" do
      item = Item.new(type: "Slice of bread", days_remaining: 0, quality: 0)

      item.tick

      expect(item).to have_attributes(days_remaining: -1, quality: 0)
    end

    xit "after sell date" do
      item = Item.new(type: "Slice of bread", days_remaining: -10, quality: 10)

      item.tick

      expect(item).to have_attributes(days_remaining: -11, quality: 6)
    end

    xit "after sell date at zero quality" do
      item = Item.new(type: "Slice of bread", days_remaining: -10, quality: 0)

      item.tick

      expect(item).to have_attributes(days_remaining: -11, quality: 0)
    end
  end
end
