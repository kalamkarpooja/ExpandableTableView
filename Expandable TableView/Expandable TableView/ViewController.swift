//
//  ViewController.swift
//  Expandable TableView
//
//  Created by TeamLeaseRegtech on 19/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var image = ["bappa", "kedarnath", "shirdi", "nashik","alibug","goa","lonavla","m","manali"]
    var name = ["Dagdusheth Halwai Ganpati Mandir Pune", "Kedarnath", "Shirdi", "Nashik","Alibaug","Goa","Lonavla","Mahabaleshwar","Manali"]
    var selectedIndex = -1
    var isCollapse = false
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 248
        tableView.rowHeight = UITableView.automaticDimension
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.selectedIndex == indexPath.row && isCollapse == true {
            return 248
        } else {
            return 55
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        cell.lblName.text = name[indexPath.row]
        cell.img.image = UIImage(named: image[indexPath.row])
        cell.img.layer.cornerRadius = 10
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if selectedIndex == indexPath.row {
            isCollapse = !isCollapse
        } else {
            isCollapse = true
        }
        selectedIndex = indexPath.row
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
