if System.get_env("EXERCISM_TEST_EXAMPLES") do
  Code.load_file("example.exs")
else
  Code.load_file("nth_prime.exs")
end

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule NthPrimeTest do
  use ExUnit.Case, async: true

  # @tag :pending
  test "first prime" do
    assert Prime.nth(1) == 2
  end

  @tag :pending
  test "second prime" do
    assert Prime.nth(2) == 3
  end

  @tag :pending
  test "sixth prime" do
    assert Prime.nth(6) == 13
  end

  @tag :pending
  test "100th prime" do
    assert Prime.nth(100) == 541
  end

  @tag :pending
  test "weird case" do
    catch_error Prime.nth(0)
  end
end
