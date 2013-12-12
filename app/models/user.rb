class User
  def ready_for_launch?
    activated?
  end

  def activated?
    ::Foo::Bar::SomeNastyLibrary.new().external
  end
end

module Foo
  module Bar
    class SomeNastyLibrary
    end
  end
end
