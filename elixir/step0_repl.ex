defmodule Mal do
  def read(str) do
    str
  end

  def eval(str) do
    str
  end

  def print(str) do
    str
  end

  def rep(str) do
    print(eval(read(str)))
  end

  def main do
    case IO.gets "user> " do
      :eof ->
        IO.puts "EOF";
      {:error, reason} ->
        IO.puts "There was an error: #{reason}"
        exit(:ioerror)
      data ->
        IO.puts rep(String.rstrip data )
        main
    end
  end
end

Mal.main
