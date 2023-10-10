defmodule Httpserver.HelloPlug do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _opts) do
    #conn
    put_resp_content_type(conn, "text/plain")
    send_resp(put_resp_content_type(conn, "text/plain"), 200, "Hello Plug!")
  end

end
