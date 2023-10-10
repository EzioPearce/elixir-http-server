defmodule Httpserver.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    #Get request to localhost
    send_resp(conn, 200, "Hello World")
  end

  get "/:name" do
    send_resp(conn, 200, "Hello #{name}")
  end

  match _ do #default case for requests that match nothing above
    send_resp(conn, 404, "Oops")

  end
end
