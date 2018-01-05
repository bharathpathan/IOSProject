//
//  Created by Bharath Pathan on 1/1/18.
//

import UIKit

class FullMenuViewController: UITableViewController,MenuItemSelectionDelegate {
    var menuItem = MenuItem()
    var delegate:MenuItemSelectionDelegate! = nil
    
   
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        delegate.didSelectMenuItem(controller: self, menuItem: menuItem)
    }
    
    func didSelectMenuItem(controller: UITableViewController, menuItem: MenuItem) {
        self.menuItem = menuItem
        navigationItem.title = menuItem.name
        if controller.navigationController?.popViewController(animated: true) == nil {return}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Pizza"{
            let vc = segue.destination as! PizzaMenuTableViewController
            vc.delegate = self
        }
        if segue.identifier == "Deep Dish"{
            let vc = segue.destination as! PizzaMenuTableViewController
            vc.delegate = self
        }
        if segue.identifier == "Calzone"{
            let vc = segue.destination as! PizzaMenuTableViewController
            vc.delegate = self
        }

    }
}
