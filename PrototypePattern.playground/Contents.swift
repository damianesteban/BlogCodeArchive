//: Swift Design Patterns - the Prototype

import Cocoa

class SpiderMan: CustomStringConvertible {
    var name: String
    var powers: [String]
    
    var description: String {
        return "(\(name),\(powers))"
    }
    
    init(name: String, powers: [String]) {
        self.name = name
        self.powers = powers

    }
    
    func clone() -> SpiderMan {
        return SpiderMan(name: self.name, powers: self.powers)
    }
}

class ClonedSpiderMan: SpiderMan {
    override init(name: String, powers: [String]) {
        super.init(name: name, powers: powers)
    }
}

let originalClone = ClonedSpiderMan(name: "Peter Parker", powers: ["Webbing", "Spidey-Sense", "Bad Jokes"])
let clonedSpiderMan1 = originalClone.clone()
let clonedSpiderMan2 = originalClone.clone()
let clonedSpiderMan3 = originalClone.clone()

clonedSpiderMan1.description
clonedSpiderMan2.description
clonedSpiderMan3.description

