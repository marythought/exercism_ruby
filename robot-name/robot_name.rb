class Robot
  @@robots = []

  def initialize
    @name = nil
  end

  def name
    if @name.nil?
      alpha = "A".upto("Z").to_a
      head = 2.times.map { alpha.sample }.join
      tail = rand(1000).to_s
      name if tail == 1000
      tail.insert(0, "0") while tail.length < 3
      @name = @@robots.include?(head + tail) ? name : head + tail
      @@robots << self
    end
    @name
  end

  def reset
    @name = nil
  end
end
