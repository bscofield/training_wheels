#!/usr/bin/env swift

import Foundation

class FileWriter {
  var filename: String

  init(name: String) {
    filename = name
  }

  func write() {
    "hello world\n".writeToFile(filename, atomically: false,  encoding: NSUTF8StringEncoding, error: nil)
  }
}

if Process.arguments.count > 1 {
  let writer = FileWriter(name: Process.arguments[1])
  writer.write()
}


