defmodule TodolistWeb.WorkingtimeController do
  use TodolistWeb, :controller

  alias Todolist.Schemas
  alias Todolist.Schemas.Workingtime

  action_fallback TodolistWeb.FallbackController


  def index(conn, %{"userID" => id, "start" => start_date, "end" => end_date}) do
    IO.puts("test")
    workingtimes = Schemas.list_workingtimes!(id, start_date, end_date)
    render(conn, "index.json", workingtimes: workingtimes)
  end

  def index(conn, %{"userID" => id}) do
    workingtimes = Schemas.list_workingtimes(id)
    render(conn, "index.json", workingtimes: workingtimes)
  end

  # def index(conn, _params) do
  #   workingtimes = Schemas.list_workingtimes()
  #   render(conn, "index.json", workingtimes: workingtimes)
  # end

  def create(conn, %{"userID" => id, "workingtime" => workingtime_params}) do
    with {:ok, %Workingtime{} = workingtime} <- Schemas.create_workingtime(%{user_id: id, end: workingtime_params["end"], start: workingtime_params["start"]}) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.workingtime_path(conn, :index, workingtime))
      |> render("show.json", workingtime: workingtime)
    end
  end

  # def create(conn, %{"workingtime" => workingtime_params}) do
  #   with {:ok, %Workingtime{} = workingtime} <- Schemas.create_workingtime(workingtime_params) do
  #     conn
  #     |> put_status(:created)
  #     |> put_resp_header("location", Routes.workingtime_path(conn, :show, workingtime))
  #     |> render("show.json", workingtime: workingtime)
  #   end
  # end

  def show(conn, %{"userID" => user_id, "id" => id}) do
    workingtime = Schemas.get_workingtime!(user_id, id)
    render(conn, "show.json", workingtime: workingtime)
  end

  # def show(conn, %{"id" => id}) do
  #   workingtime = Schemas.get_workingtime!(id)
  #   render(conn, "show.json", workingtime: workingtime)
  # end

  def update(conn, %{"id" => id, "workingtime" => workingtime_params}) do
    workingtime = Schemas.get_workingtime!(id)

    with {:ok, %Workingtime{} = workingtime} <- Schemas.update_workingtime(workingtime, workingtime_params) do
      render(conn, "show.json", workingtime: workingtime)
    end
  end

  def delete(conn, %{"id" => id}) do
    workingtime = Schemas.get_workingtime!(id)

    with {:ok, %Workingtime{}} <- Schemas.delete_workingtime(workingtime) do
      send_resp(conn, :no_content, "")
    end
  end
end
