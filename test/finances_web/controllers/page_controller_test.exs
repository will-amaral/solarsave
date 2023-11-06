defmodule FinancesWeb.PageControllerTest do
  use FinancesWeb.ConnCase

  import Finances.AccountsFixtures

  test "GET /", %{conn: conn} do
    conn =
      conn
      |> log_in_user(user_fixture())
      |> get(~p"/")

    assert html_response(conn, 200) =~ "Peace of mind from prototype to production"
  end
end
