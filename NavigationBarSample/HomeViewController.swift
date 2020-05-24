//
//  HomeViewController.swift
//  NavigationBarSample
//
//  Created by 王梦杰 on 2020/5/24.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationView.titleLabel.text = "HOME"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func pushToNews(_ sender: UIButton) {
        let storyB = UIStoryboard(name: "Main", bundle: nil)
        let newsVC = storyB.instantiateViewController(withIdentifier: "NewsListViewController")
        self.navigationController?.pushViewController(newsVC, animated: true)
    }
    
    
    @IBAction func modalToNews(_ sender: UIButton) {
        let storyB = UIStoryboard(name: "Main", bundle: nil)
        let newsVC = storyB.instantiateViewController(withIdentifier: "NewsListViewController")
        newsVC.modalPresentationStyle = .overFullScreen
        self.present(newsVC, animated: true, completion: nil)
    }
}
