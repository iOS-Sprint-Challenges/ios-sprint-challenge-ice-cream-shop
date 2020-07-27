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
    var size: [Size]?
    var totalSales: Double = 0.0
    
    func listTopFlavors(){
        guard let flavors = flavors else { return }
        let filtered = flavors.filter {$0.rating > 4}
        print(filtered)
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
