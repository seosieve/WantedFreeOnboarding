//
//  TableViewCell.swift
//  
//
//  Created by 서충원 on 2023/03/03.
//

import UIKit
import Then
import SnapKit

class TableViewCell: UITableViewCell {

    static let cellId = "cellId"
    var cellIndex: Int?
    
    let photoView = UIImageView().then {
        $0.image = UIImage(systemName: "photo")
    }
    
    let progressBar = UIProgressView().then {
        $0.progress = 0.5
    }
    
    lazy var loadButton = UIButton().then {
        $0.backgroundColor = .systemBlue
        $0.setTitle("Load", for: .normal)
        $0.addTarget(self, action: #selector(loadButtonPressed(_:)), for: .touchUpInside)
    }
    
    @objc func loadButtonPressed(_ sender: UIButton) {
        photoView.image = UIImage(systemName: "photo")
        if let index = cellIndex {
            photoView.load(url: catURLs[index])
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setViews() {
        contentView.addSubview(photoView)
        contentView.addSubview(progressBar)
        contentView.addSubview(loadButton)
        
        photoView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(10)
            make.left.equalToSuperview().inset(30)
            make.width.equalTo(110)
        }
        progressBar.snp.makeConstraints { make in
            make.left.equalTo(photoView.snp.right).offset(10)
            make.width.equalTo(150)
            make.centerY.equalToSuperview()
        }
        loadButton.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(30)
            make.centerY.equalToSuperview()
            make.width.equalTo(80)
        }
        loadButton.rounded(6)
    }

}
