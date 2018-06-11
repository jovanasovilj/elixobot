defmodule ElixobotTest do
  use ExUnit.Case
  doctest Elixobot

  test "greets the world" do
    assert Elixobot.hello() == :world
  end
end
