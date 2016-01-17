import Foundation
import Glibc


let dataFile = NSFileHandle(forReadingAtPath:"data.txt")
var process = [String]()

if let data = dataFile?.readDataToEndOfFile(){
    var dataString = ""
    var cData = UnsafePointer<UInt8>(data.bytes)
    for i in 0..<data.length{
        dataString.append(UnicodeScalar(cData.advancedBy(i).memory))
    }
}
else{
    print("datafile invalid")
}

// Break data string apart
