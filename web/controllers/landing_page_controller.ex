defmodule PhoenixDiff.LandingPageController do
  use PhoenixDiff.Web, :controller

  alias PhoenixDiff.Diff

  def index(conn, params) do
    available_versions = Diff.available_versions
    conn
    |> assign(:available_versions, available_versions)
    |> assign(:target_version, Map.get(params, "target", available_versions |> List.last))
    |> assign(:source_version, Map.get(params, "source", available_versions |> Enum.at(-3)))
    |> render("index.html")
  end
end
