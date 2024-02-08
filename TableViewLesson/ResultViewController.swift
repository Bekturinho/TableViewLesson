//
//  ResultViewController.swift
//  TableViewLesson
//
//  Created by fortune cookie on 2/8/24.
//

import UIKit

class ResultViewController: UIViewController {

    private lazy var resultLAbel: UILabel = {
        let label = UILabel()
        label.text = resultPrName
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(resultLAbel)
        resultLAbel.translatesAutoresizingMaskIntoConstraints = false
        resultLAbel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        resultLAbel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
  

}
