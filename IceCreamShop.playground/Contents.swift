struct Flavor{
    var name: String
    var rating: Int
}


enum Size: Double{
    case small = 2.99
    case medium = 3.99
    case large = 4.99
}

struct Cone{
    var flavor: Flavor
    var topping: String?
    var size: Size
    
    func eat(){
        print("Mmm! I love \(flavor.name)!")
    }
}

class IceCreamShop{
    var flavors: [Flavor]?
    var toppings: [String]?
    var size: Size = .large
    var totalSales: Double = 0.0
    
    func listTopFlavors(){
        guard let flavors = flavors else { return }
        var flavorString = "Flavors: "
        for flavor in flavors{
            if flavor.rating > 4{
                flavorString.append(flavor.name)
                flavorString.append(", ")
            }
        }
        print(flavorString)
    }
    
    func orderCone(flavor: Flavor, size: Size, topping: String?) -> Cone {
        let newCone = Cone(flavor: flavor, topping: topping, size: size)
        
        totalSales += newCone.size.rawValue
        
        if let toppings = toppings {
            print("Your \(flavor) ice cream with \(toppings) is $\(size.rawValue)")
        }else{
            print("Your \(flavor) ice cream is $\(size.rawValue)")
        }
        return newCone
    }
}

let flavorsArray = [
    Flavor(name: "Strawberry", rating: 1),
    Flavor(name: "Caramel", rating: 5),
    Flavor(name: "Chocolate", rating: 7),
    Flavor(name: "Bubble Gum", rating: 8)
]

let toppingsArray = ["M&M's","Caramel","Cookie"]

let myShop = IceCreamShop()

//myShop.flavors = flavorsArray
//myShop.toppings = toppingsArray
//myShop.size = [.large,.medium,.small]

myShop.listTopFlavors()

//myShop.orderCone(flavor: flavorsArray[0], size: .small, topping: nil)



