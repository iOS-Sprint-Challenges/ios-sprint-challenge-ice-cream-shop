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
    var topping: String
    var size: Size
    
    func eat(){
        print("Mmm! I love \(flavor.name)!")
    }
}

class IceCreamShop{
    var flavors: [Flavor]?
    var toppings: [String]?
    var size: [Size]?
    var totalSales: Double?
    
    func listTopFlavors(){
        guard let flavors = flavors else { return }
        let filtered = flavors.filter {$0.rating > 4}
        print(filtered)
    }
    
}
