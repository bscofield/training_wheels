#!/usr/bin/env xctest

import XCTest

class FileWriterTests: XCTestCase {
  func testWriting() {
    let fw = FileWriter(name: "test.txt")
    fw.write()
    assert(false, "should say hello world")
  }
}
