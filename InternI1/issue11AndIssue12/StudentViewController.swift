//
//  StudentViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 24/3/25.
//

import UIKit

class StudentViewController: UIViewController {
    
    var sectionTitle: [String] = ["Quang Ngai", "Da Nang"]
    
    var students = [
        [
            Student(id: "#101", name: "Hoang Thanh", age: 21),
            Student(id: "#102", name: "Duy Chanh", age: 22),
            Student(id: "#103", name: "Van Nam", age: 19),
            Student(id: "#104", name: "Phuong Duyen", age: 20),
            Student(id: "#105", name: "Duy Tinh", age: 21),
            Student(id: "#106", name: "Truong Giang", age: 22),
            Student(id: "#107", name: "Minh Sang", age: 23),
            Student(id: "#108", name: "Van Tai", age: 22),
        ],
        [
            Student(id: "#112", name: "Duy Chanh", age: 22),
            Student(id: "#143", name: "Van Nam", age: 19),
            Student(id: "#164", name: "Phuong Duyen", age: 20),
            Student(id: "#107", name: "Minh Sang", age: 23),
            Student(id: "#108", name: "Van Tai", age: 22),
            Student(id: "#101", name: "Hoang Thanh", age: 21),
            Student(id: "#174", name: "Truong Giang", age: 22),
            Student(id: "#189", name: "Minh Sang", age: 23),
        ]
    ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Student Management"
        
        tableView.register(UINib(nibName: "StudentViewCell", bundle: .main), forCellReuseIdentifier: "myCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func showAlert(name: String) {
        let alert = UIAlertController(title: "Success!", message: "You have followed \(name) successfully", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}

extension StudentViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! StudentViewCell
        let student = students[indexPath.section][indexPath.row]
        cell.configCell(student: student)
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .normal, title: "Edit") { action, view, completionHandler in
            print("Delete: \(indexPath.row)")
            completionHandler(true)
        }
        delete.image = UIImage(systemName: "trash")
        delete.backgroundColor = .red
        
        let down = UIContextualAction(style: .normal, title: "Down") { action, view, completionHandler in
            print("Down: \(indexPath.row)")
            completionHandler(true)
        }
        down.image = UIImage(systemName: "arrow.down")
        down.backgroundColor = .green
        
        let swipe = UISwipeActionsConfiguration(actions: [delete, down])
        
        return swipe
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let favorite = UIContextualAction(style: .normal, title: "favorite") { (action, view, completionHandler) in
              print("favorite: \(indexPath.row + 1)")
              completionHandler(true)
            }
            favorite.image = UIImage(systemName: "suit.heart.fill")
            favorite.backgroundColor = .systemPink
        let swipe = UISwipeActionsConfiguration(actions: [favorite])
        
        return swipe
    }
}

extension StudentViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("- Section: \(sectionTitle[indexPath.section]) - Row: \(indexPath.row)")
        let vc = StudentDetailViewController()
        vc.name = students[indexPath.section][indexPath.row].name
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension StudentViewController: StudentViewCellDelegate {

    func follow(name: String) {
        showAlert(name: name)
    }
}

