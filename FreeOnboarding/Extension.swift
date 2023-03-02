//
//  Extension.swift
//  FreeOnboarding
//
//  Created by 서충원 on 2023/03/02.
//

import UIKit

extension UIButton {
    func rounded(_ radius: CGFloat) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = radius
    }
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
