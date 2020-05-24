//
//  NewsListViewController.swift
//  NavigationBarSample
//
//  Created by 王梦杰 on 2020/5/24.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import UIKit

class NewsListViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationView.titleLabel.text = "NEWS"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if self.presentingViewController != nil {
            self.dismiss(animated: true, completion: nil)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
}
