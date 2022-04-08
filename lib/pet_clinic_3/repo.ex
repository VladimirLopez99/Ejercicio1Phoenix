defmodule PetClinic3.Repo do
  use Ecto.Repo,
    otp_app: :pet_clinic_3,
    adapter: Ecto.Adapters.Postgres
end
