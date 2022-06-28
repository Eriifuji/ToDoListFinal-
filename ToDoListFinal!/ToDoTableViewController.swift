//
//  ToDoTableViewController.swift
//  ToDoListFinal!
//
//  Created by Eri Fujita on 2022-06-27.
//

import UIKit

class ToDoTableViewController: UIViewController {
    
    
    var toDos : [ToDo] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()

        // Do any additional setup after loading the view.
    }
    

    
    func createToDos() -> [ToDo] {

      let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let toDo = toDos[indexPath.row]

      return cell
    }
    
   

}
