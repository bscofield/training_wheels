#!/usr/bin/env ruby

class FileWriter
  def self.write(filename)
    File.open(filename, 'w') do |f|
      f.puts "hello world"
    end
  end
end

if __FILE__ == $0
  FileWriter.write(ARGV[0])
end
