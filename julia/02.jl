#!/usr/bin/env julia

function write_hello(file)
  write(file, "hello world\n")
end

function say_hello(filename)
  open(write_hello, filename, "w")
end

if length(ARGS) >= 1
  say_hello(ARGS[1])
end
