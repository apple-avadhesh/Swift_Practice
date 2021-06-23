import Foundation

/*
Indirect
When creating recursive enums where one case contains the enum itself, such as linked lists, we have to
use the indirect keyword
 - The indirect keyword wraps the case in a class, making it a reference
 - Because you can't have a value type containing itself ( it would essentially take up infinite space
*/

/// recursive enum 'List<Element>' Eg. Linked List
enum List<Element> {
    case end
    indirect case node(value: Element, next: List<Element>)
}
