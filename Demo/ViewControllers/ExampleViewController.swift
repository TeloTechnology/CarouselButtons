//
//  ExampleViewController.swift
//  Demo
//
//  Created by Rudi Luis on 26/10/2019.
//  Copyright © 2019 Telo Technology Limited. All rights reserved.
//

import UIKit
import CarouselButtons

class ExampleViewController: UIViewController {
    
    // MARK: - Property
    
    @IBOutlet
    private weak var carouselCollectionButton: CarouselCollectionView!
    
    // MARK: - Lifecyle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    // MARK: - Setup
    
    private func setup() {
        let data = [
            (title: "Cash", icon: UIImage(named: "CashMoney"), isAvailable: true),
            (title: "Credit Card", icon: UIImage(named: "CreditCard"), isAvailable: true),
            (title: "Wallet 1", icon: UIImage(named: "Wallet"), isAvailable: false),
            (title: "Wallet 2", icon: UIImage(named: "Wallet"), isAvailable: true)
        ]
        
        carouselCollectionButton.add(data)
        
        carouselCollectionButton.didSelectButton = { position in
            print("Selected: \(position) | title: \(data[position].title)")
        }
    }
}
