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
    
    let progressView = UIProgressView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        
    }

}
