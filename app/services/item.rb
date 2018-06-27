class Item
  attr_reader :type, :days_remaining, :quality

  def initialize(type:, days_remaining:, quality:)
    @type = type
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    if @type != "Gorgonzola cheese" and @type != "Concert ticket"
      if @quality > 0
        if @type != "Gold ring"
          @quality = @quality - 1
        end
      end
    else
      if @quality < 50
        @quality = @quality + 1
        if @type == "Concert ticket"
          if @days_remaining < 11
            if @quality < 50
              @quality = @quality + 1
            end
          end
          if @days_remaining < 6
            if @quality < 50
              @quality = @quality + 1
            end
          end
        end
      end
    end
    if @type != "Gold ring"
      @days_remaining = @days_remaining - 1
    end
    if @days_remaining < 0
      if @type != "Gorgonzola cheese"
        if @type != "Concert ticket"
          if @quality > 0
            if @type != "Gold ring"
              @quality = @quality - 1
            end
          end
        else
          @quality = @quality - @quality
        end
      else
        if @quality < 50
          @quality = @quality + 1
        end
      end
    end
  end
end
