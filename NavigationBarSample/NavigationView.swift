//
//  NavigationView.swift
//  NavigationBarSample
//
//  Created by 王梦杰 on 2020/5/24.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import UIKit

class NavigationView: UIView {
    
    var barView: UIView!
    var titleLabel: UILabel!
//    var leftButton: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupUI()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    private func setupUI() {
        self.backgroundColor = .darkGray
        
        barView = UIView()
        barView.backgroundColor = .red
        self.addSubview(barView)
        
//        leftButton = UIButton()
        
        titleLabel = UILabel()
        titleLabel.textAlignment = .center
        self.barView.addSubview(titleLabel)
    }
    
    func reloadUI(_ isModal: Bool) {
        var y: CGFloat = 20
        if IS_BANGSSCREEN {
            y = 44
        }
        let x: CGFloat = 0
        let w: CGFloat = self.frame.size.width
        let h: CGFloat = 44
        self.barView.frame = CGRect(x: x,
                                    y: y,
                                    width: w,
                                    height: h)
        
        let titleX: CGFloat = 60
        let titleY: CGFloat = 0
        let titleW: CGFloat = w - 60 * 2
        let titleH: CGFloat = h
        self.titleLabel.frame = CGRect(x: titleX,
                                       y: titleY,
                                       width: titleW,
                                       height: titleH)
        
        if isModal {
            self.backgroundColor = .darkGray
            self.barView.backgroundColor = .red
            let path = UIBezierPath(roundedRect: self.barView.bounds,
                                    byRoundingCorners: [UIRectCorner.topLeft, UIRectCorner.topRight],
                                    cornerRadii: CGSize(width: 10, height: 10))
            let shapeLayer = CAShapeLayer()
            shapeLayer.frame = self.barView.bounds
            shapeLayer.path = path.cgPath
            self.barView.layer.mask = shapeLayer
        } else {
            self.backgroundColor = .red
            self.barView.backgroundColor = .red
        }
    }
    

}
