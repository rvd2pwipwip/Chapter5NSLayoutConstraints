//
//  ViewController.swift
//  Chapter5NSLayoutConstraints
//
//  Created by Herve Desrosiers on 2020-03-03.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let padding: CGFloat = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.addSubview(redView)
        NSLayoutConstraint.activate([
            // redView.leading == view.leading + padding
            NSLayoutConstraint(item: redView,
                               attribute: .leading,
                               relatedBy: .equal,
                               toItem: view,
                               attribute: .leading,
                               multiplier: 1.0,
                               constant: padding),
            // view.trailing == redView.trailing + padding
            NSLayoutConstraint(item: redView,
                               attribute: .trailing,
                               relatedBy: .equal,
                               toItem: view,
                               attribute: .trailing,
                               multiplier: 1.0,
                               constant: -padding),
            // redView.top == view.top + padding
            NSLayoutConstraint(item: redView,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: view,
                               attribute: .top,
                               multiplier: 1.0,
                               constant: padding),
            // view.bottom = redView.bottom + padding
            NSLayoutConstraint(item: redView,
                               attribute: .bottom,
                               relatedBy: .equal,
                               toItem: view,
                               attribute: .bottom,
                               multiplier: 1.0,
                               constant: -padding)
        ])
    }

    private let redView: UIView = {
        let rv = UIView()
        rv.translatesAutoresizingMaskIntoConstraints = false
        rv.backgroundColor = .red
        return rv
    }()
}

