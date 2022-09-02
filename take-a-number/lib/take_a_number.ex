defmodule TakeANumber do
  @spec start :: pid()
  def start() do
    {:ok, pid} = Task.start_link(fn -> loop(0) end)
    pid
  end

  @spec loop(integer()) :: integer() | nil
  def loop(int) do
    receive do
      {:report_state, sender_pid} ->
        send(sender_pid, int)
        loop(int)

      {:take_a_number, sender_pid} ->
        send(sender_pid, int + 1)
        loop(int + 1)

      :stop ->
        nil

      _any ->
        loop(int)
    end
  end
end
