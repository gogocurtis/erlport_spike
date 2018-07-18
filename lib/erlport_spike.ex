defmodule ErlportSpike do
  use Export.Ruby


  def start_ruby do
    {:ok, ruby} = Ruby.start(ruby_lib: Path.expand("priv/ruby"))
  end

  def call_ruby_method({:error, _}) do
    IO.puts("Invalid ruby process")
  end

  def call_ruby_method({:ok, ruby_pid}) do
    # call "upcase" method from "test" file with "hello" argument
    [ ruby_pid,
      ruby_pid |> Ruby.call(
    "erlport",
    "pledge_transition",
    ["hello"]
  ),
      # same as above but prettier
      ruby_pid |> Ruby.call(pledge_transition("hello"), from_file: "erlport")

    ]
  end
end
