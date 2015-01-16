#!/usr/bin/env ruby

require './02'

gem 'minitest'
require 'minitest/autorun'

class FileWriterTest < Minitest::Test
  def test_writing
    FileWriter.write('test.txt')
    assert_equal File.read('test.txt'), "hello world\n"
    File.unlink 'test.txt'
  end
end
