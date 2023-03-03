//
//  ViewController.swift
//  FreeOnboarding
//
//  Created by 서충원 on 2023/03/02.
//

import UIKit
import Then
import SnapKit

class ViewController: UIViewController {
    
    let tableView = UITableView().then {
        $0.rowHeight = 100
//        $0.separatorStyle = .none
    }
    
    let loadAllButton = UIButton().then {
        $0.backgroundColor = .systemBlue
        $0.setTitle("Load All Images", for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.cellId)
        setViews()
    }
    
    func setViews() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(500)
        }
        
        view.addSubview(loadAllButton)
        loadAllButton.rounded(6)
        loadAllButton.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(30)
            make.top.equalTo(tableView.snp.bottom).offset(20)
            make.height.equalTo(40)
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.cellId, for: indexPath) as! TableViewCell
        
        return cell
    }
}

