//
//  Created by Bharath Pathan on 1/1/18.
//

import UIKit

class OrderList :NSObject{
    var list:[MenuItem] = []
    func add(menuItem:MenuItem){
        list = list + [menuItem]
    }
}
