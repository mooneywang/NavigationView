//
//  ViewController.swift
//  NavigationBarSample
//
//  Created by 王梦杰 on 2020/5/24.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var navigationView: NavigationView!
    
    enum NavigationBarStyle {
        case push
        case modal
    }
    
    var naviBarStyle: NavigationBarStyle = .push
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.navigationView = self.createNavigationView()
        self.view.addSubview(self.navigationView)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        if self.presentingViewController != nil {
            self.naviBarStyle = .modal
        } else {
            self.naviBarStyle = .push
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.setupNavigationView()
    }
    
    private func createNavigationView() -> NavigationView {
        let view = NavigationView()
        return view
    }
    
    private func setupNavigationView() {
        var statusH: CGFloat = 20
        if IS_BANGSSCREEN {
            statusH = 44
        }
        let x: CGFloat = 0
        let y: CGFloat = 0
        let w: CGFloat = self.view.frame.width
        let h: CGFloat = 44 + statusH
        self.navigationView.frame = CGRect(x: x,
                                           y: y,
                                           width: w,
                                           height: h)
        
        self.navigationView.reloadUI(self.naviBarStyle == .modal)
    }
}

