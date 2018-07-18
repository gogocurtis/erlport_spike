defmodule ErlportSpikeTest do
  use ExUnit.Case
  doctest ErlportSpike

  test "greets the world" do
    assert ErlportSpike.hello() == :world
  end
end
