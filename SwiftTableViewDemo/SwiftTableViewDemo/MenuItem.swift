//
//Created by Bharath Pathan on 1/1/18.
//

import UIKit

class MenuItem: NSObject {
    var name = "None"
    var price = 0.00
    var special = false
    override init(){}
    init(name:String,price:Double,special:Bool){
        self.name = name
        self.price = price
        self.special = special
    }
}
