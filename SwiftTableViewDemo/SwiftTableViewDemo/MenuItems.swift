//
//  Created by Bharath Pathan on 1/1/18.
//

import UIKit


class MenuItems:NSObject{
    var sections:[String] = []
    var items:[[MenuItem]] = []
        
    func add(section: String, item:[MenuItem]){
        sections = sections + [section]
        items = items + [item]
    }
}




class PizzaMenuItems: MenuItems {
    override init() {
        super.init()
        
        add(section:"Pizza", item: [
            MenuItem(name:"Margherita",price:7.95,special:false),
            MenuItem(name:"BBQ Chicken",price:11.49,special:false),
            MenuItem(name:"Pepperoni",price:8.45,special:false),
            MenuItem(name:"Sausage",price:8.45,special:false),
            MenuItem(name:"Seafood",price:12.75,special:false),
            MenuItem(name:"Special",price:13.50,special:true)
        ])
        add(section:"Deep Dish Pizza", item: [
           MenuItem(name:"Sausage",price:10.65,special:false),
           MenuItem(name:"Meat Lover's",price:12.35,special:false),
           MenuItem(name:"Veggie Lover's",price:10.00,special:false),
           MenuItem(name:"BBQ Chicken",price:16.60,special:true),
           MenuItem(name:"Mushroom",price:11.25,special:false),
           MenuItem(name:"Special",price:15.45,special:true)
        ])
        add(section:"Calzone", item: [
          MenuItem(name:"Sausage",price:8.00,special:false),
          MenuItem(name:"Chicken Pesto",price:8.00,special:false),
          MenuItem(name:"Prawns and Mushrooms",price:8.00,special:false),
          MenuItem(name:"Primavera",price:8.00,special:false),
          MenuItem(name:"Meatball",price:8.00,special:false)
        ])
    }
    
}
