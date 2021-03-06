class Enemy < Character
  def initialize(map, options)
    super(map, options)
    @max_speed = 1
    @color = Gosu::Color::BLUE
  end

  def ai!
    @moving_for ||= 1
    @direction ||= 1

    if @moving_for > 0
      @moving_for -= 1
      if @moving_for == 0
        @moving_for = 50 + rand(20)
        @direction = 2 * rand(2) - 1
      end
    end
    accelerate!(@direction)
  end
end
