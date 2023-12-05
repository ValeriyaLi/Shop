//
//  ProductDetailsViewController.swift
//  Shop
//
//  Created by Apple on 10.12.2023.
//

import UIKit

class ProductDetailsViewController: UIViewController {

    
    @IBOutlet weak var productDetailsImage: UIImageView!
    @IBOutlet weak var productDetailsName: UILabel!
    
    @IBOutlet weak var productDetailsPrice: UILabel!
    
    @IBOutlet weak var productDetailsDesc: UILabel!
        
    var selectedProduct: Product = .init(id: 0, name: "", price: "", imageName: "", categoryID: 1, description: "") {
        didSet {
            let selectedProduct = selectedProduct
        }
    }
    
//    fdghjkl;'
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView();
    }

    private func configureView() {
        productDetailsName?.text = selectedProduct.name
        productDetailsDesc?.text = selectedProduct.description
        productDetailsPrice?.text = selectedProduct.price
        productDetailsImage?.image = UIImage(named: selectedProduct.imageName)
    }
    
    
    
    

}
