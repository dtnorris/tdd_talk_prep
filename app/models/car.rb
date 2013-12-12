class Car
  attr_accessor :model, :engine

  def initialize(model)
    @model = model
    @engine = ::Engine.new
  end

  def start
    engine.start
  end

  def running
    engine.running
  end
end


