#!/usr/bin/env julia

using Base.Test

custom_handler(r::Test.Success) = println("Success!")
custom_handler(r::Test.Failure) = println("Failure!")

require("02.jl")

filename = "test.txt"

function read_file(filename)
  open(readall, filename, "r")
end

say_hello(filename)

Test.with_handler(custom_handler) do
  @test(read_file(filename) == "hello world\n")
end

rm(filename)


