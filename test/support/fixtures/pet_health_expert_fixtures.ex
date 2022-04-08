defmodule PetClinic3.PetHealthExpertFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PetClinic3.PetHealthExpert` context.
  """

  @doc """
  Generate a vet.
  """
  def vet_fixture(attrs \\ %{}) do
    {:ok, vet} =
      attrs
      |> Enum.into(%{
        age: 42,
        email: "some email",
        name: "some name",
        sex: "some sex",
        specialities: "some specialities"
      })
      |> PetClinic3.PetHealthExpert.create_vet()

    vet
  end
end
