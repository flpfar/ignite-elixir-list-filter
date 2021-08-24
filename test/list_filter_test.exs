defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "counts odd numbers" do
      input = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call(input)

      expected_response = 3

      assert response == expected_response
    end
  end
end
