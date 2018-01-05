//
//  Created by Bharath Pathan on 1/1/18.
//

import UIKit

class PizzaMenuTableViewController: UITableViewController {

    var myOrder = MenuItem()
    var menuItems = PizzaMenuItems()
    var delegate:MenuItemSelectionDelegate! = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return menuItems.sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.items[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let row = indexPath.row
        let section = indexPath.section
        let menuItem = menuItems.items[section][row]
        cell.textLabel?.text = menuItem.name
        let priceString = String(format:"%2.2f",menuItem.price)
        cell.detailTextLabel?.text = priceString
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return menuItems.sections[section]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        let section = indexPath.section
        let order = menuItems.items[section][row]
        order.name += " " + menuItems.sections[section]
        navigationItem.title = order.name
        tableView.deselectRow(at: indexPath, animated: true)
        delegate.didSelectMenuItem(controller: self, menuItem: order)
    }
    
}
