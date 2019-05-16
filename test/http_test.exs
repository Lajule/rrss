defmodule HTTPTest do
  use ExUnit.Case

  test "returns an error" do
    assert {:error, _} = RRSS.HTTP.get("foo")
  end
end
