import Foundation


var a = 5
var b: Int
a += 1
a += 1
b = a + a
print(b)
print(a)


var i = 0

while i < 10000 {

    DispatchQueue.global(qos: .default).async(execute: {
        i += 1
    })
}
print(" i= \(i) ")
