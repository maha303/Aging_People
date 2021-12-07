//
//  ViewController.swift
//  Aging_People
//
//  Created by Maha saad on 03/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    

    
    let name = ["George","Betty","Fran","Joe","Helda","Winifred","Zed","Sara","Jeffy","Abraham","Anna","Melinda"]
    
    var age  = [Int]()
  

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        for i in 5...95 {
            age.append(i)
        }
    }


}
extension ViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as! CustomViewCell
        cell.Name.text = "\(name[indexPath.row]) "
        cell.Age.text = "\(age[Int.random(in: 0..<age.count)]) years old"
        return cell
    }
    
    
}


