import Foundation

var pizzaInInches: Int = 10 {
    willSet {
        
    }
    
    didSet {
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizzaInInches set to 18")
            pizzaInInches = 18
        }
    }
}

pizzaInInches = 8


var numberOfPeople: Int = 4
let slicesPerPerson: Int = 3

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
    
    set {
        print("numberOfSlices now has new value which is \(newValue)")
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    
    set {
        let totalSlices = numberOfPizza * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

//print(numberOfPizza)

//opposite situation, want to know how many friends to invite over
numberOfPizza = 4

print(numberOfPeople)

