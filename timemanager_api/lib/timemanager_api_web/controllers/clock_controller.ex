defmodule TodolistWeb.ClockController do
  use TodolistWeb, :controller

  alias Todolist.Schemas
  alias Todolist.Schemas.Clock

  action_fallback TodolistWeb.FallbackController

  # def index(conn, _params) do
  #   clocks = Schemas.list_clocks()
  #   render(conn, "index.json", clocks: clocks)
  # end

  def create(conn, %{"userID" => id, "clock" => clock_params}) do
    with {:ok, %Clock{} = clock} <- Schemas.create_clock(%{user_id: id, time: clock_params["time"], status: clock_params["status"]}) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.clock_path(conn, :show, clock))
      |> render("show.json", clock: clock)
    end
  end

  # def create(conn, %{"clock" => clock_params}) do
  #   with {:ok, %Clock{} = clock} <- Schemas.create_clock(clock_params) do
  #     conn
  #     |> put_status(:created)
  #     |> put_resp_header("location", Routes.clock_path(conn, :show, clock))
  #     |> render("show.json", clock: clock)
  #   end
  # end

  def show(conn, %{"userID" => userID}) do
    clock = Schemas.list_clocks!(userID)
    render(conn, "show.json", clock: clock)
  end

  # def show(conn, %{"id" => id}) do
  #   clock = Schemas.get_clock!(id)
  #   render(conn, "show.json", clock: clock)
  # end

  # def update(conn, %{"id" => id, "clock" => clock_params}) do
  #   clock = Schemas.get_clock!(id)

  #   with {:ok, %Clock{} = clock} <- Schemas.update_clock(clock, clock_params) do
  #     render(conn, "show.json", clock: clock)
  #   end
  # end

  # def delete(conn, %{"id" => id}) do
  #   clock = Schemas.get_clock!(id)

  #   with {:ok, %Clock{}} <- Schemas.delete_clock(clock) do
  #     send_resp(conn, :no_content, "")
  #   end
  # end
end
