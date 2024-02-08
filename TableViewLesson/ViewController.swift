//
//  ViewController.swift
//  TableViewLesson
//
//  Created by fortune cookie on 2/8/24.
//

import UIKit
public var resultPrName = ""
class ViewController: UIViewController {

    private lazy var tableView = UITableView()
    private var trueOrFAlse = Bool()
    private var programmingLangs: [ProgLanguages] = [ProgLanguages(name: [
        "Python",
         "Java",
         "JavaScript",
         "C",
         "C++",
         "C#",
         "Ruby",
         "Swift",
         "Go",
         "Kotlin",
         "PHP",
         "TypeScript",
         "Rust",
         "Perl",
         "HTML",
         "CSS",
         "R",
         "MATLAB",
         "Shell",
         "Objective-C",
         "Scala",
         "Dart",
         "Lua",
         "Julia",
         "Groovy",
         "SQL",
         "Assembly",
         "Lisp",
         "Haskell",
         "VB.NET"
    
    ])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Table View"
        navigationController?.navigationBar.prefersLargeTitles = true
       

    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupSubViews()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
func setupSubViews(){
        guard let navigationController else {return}
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: navigationController.navigationBar.bottomAnchor, constant: 20),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
         
        ])
    }

}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let langCounts = programmingLangs[section]
        return langCounts.name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let langs = programmingLangs[indexPath.section]
        let langsNames = langs.name[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let isEven = indexPath.row % 2 == 0
        if isEven{
            cell.accessoryType = .disclosureIndicator
        }
        cell.textLabel?.text = langsNames
        
        return cell
    }
    
    
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let langs = programmingLangs[indexPath.section]
        let langsNames = langs.name[indexPath.row]
        let resultView = ResultViewController()
        let isEven = indexPath.row % 2 == 0
        if isEven{
                navigationController?.pushViewController(resultView, animated: true)
        }
        resultPrName = langsNames
        print(resultPrName)
     
        
    }

}


