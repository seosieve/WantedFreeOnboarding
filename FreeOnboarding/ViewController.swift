//
//  ViewController.swift
//  FreeOnboarding
//
//  Created by 서충원 on 2023/03/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LoadButton1: UIButton!
    @IBOutlet weak var LoadButton2: UIButton!
    @IBOutlet weak var LoadButton3: UIButton!
    @IBOutlet weak var LoadButton4: UIButton!
    @IBOutlet weak var LoadButton5: UIButton!
    @IBOutlet weak var ImageView1: UIImageView!
    @IBOutlet weak var ImageView2: UIImageView!
    @IBOutlet weak var ImageView3: UIImageView!
    @IBOutlet weak var ImageView4: UIImageView!
    @IBOutlet weak var ImageView5: UIImageView!
    @IBOutlet weak var LoadAllButton: UIButton!
    
    @IBAction func LoadButton1Pressed(_ sender: Any) {
        ImageView1.image = UIImage(systemName: "photo")
        ImageView1.load(url: URL(string: catURLs[0])!)
    }
    
    @IBAction func LoadButton2Pressed(_ sender: Any) {
        ImageView2.image = UIImage(systemName: "photo")
        ImageView2.load(url: URL(string: catURLs[1])!)
    }
    
    @IBAction func LoadButton3Pressed(_ sender: Any) {
        ImageView3.image = UIImage(systemName: "photo")
        ImageView3.load(url: URL(string: catURLs[2])!)
    }
    
    @IBAction func LoadButton4Pressed(_ sender: Any) {
        ImageView4.image = UIImage(systemName: "photo")
        ImageView4.load(url: URL(string: catURLs[3])!)
    }
    @IBAction func LoadButton5Pressed(_ sender: Any) {
        ImageView5.image = UIImage(systemName: "photo")
        ImageView5.load(url: URL(string: catURLs[4])!)
    }
    
    @IBAction func LoadAllButtonPressed(_ sender: Any) {
        ImageView1.image = UIImage(systemName: "photo")
        ImageView2.image = UIImage(systemName: "photo")
        ImageView3.image = UIImage(systemName: "photo")
        ImageView4.image = UIImage(systemName: "photo")
        ImageView5.image = UIImage(systemName: "photo")
        ImageView1.load(url: URL(string: catURLs[0])!)
        ImageView2.load(url: URL(string: catURLs[1])!)
        ImageView3.load(url: URL(string: catURLs[2])!)
        ImageView4.load(url: URL(string: catURLs[3])!)
        ImageView5.load(url: URL(string: catURLs[4])!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
    
    func setViews() {
        LoadButton1.rounded(6)
        LoadButton2.rounded(6)
        LoadButton3.rounded(6)
        LoadButton4.rounded(6)
        LoadButton5.rounded(6)
        LoadAllButton.rounded(6)
    }
}

