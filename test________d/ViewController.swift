//
//  ViewController.swift
//  NYTPhotoViewer-Swift
//
//  Created by Mark Keefe on 3/20/15.
//  Copyright (c) 2015 The New York Times. All rights reserved.
//

import UIKit
import  SnapKit
import Foundation
struct SettingDemoValue{
    let title:String?
    let image: String?
    let price:String?
    
    init(title:String, image: String,price : String) {
        self.title = title
        self.image = image
        self.price = price
    }
    
}

   
class ViewController: UIViewController {
    let scrollView =  UIScrollView()
    let stackView = UIStackView()
  
    var  arrListDemo:[SettingDemoValue] = [
           SettingDemoValue(title: "Happy", image: "image_happystone", price: "2,600,000 đ"),
           SettingDemoValue(title: "Happy", image: "image_tuongphongthuy", price: "3,000,000 đ"),
           SettingDemoValue(title: "Happy", image: "image_happystone", price: "2,600,000 đ"),
          
       ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
   
        view.addSubview(scrollView)
        
        scrollView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
     
        
        stackView.axis = .vertical
        scrollView.addSubview(stackView)
        
        stackView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        for i in 1 ... arrListDemo.count {
            ///properties for stackview
            let contentView = UIView()
            let imageProduct = UIImageView()
            let titleProductLabel = UILabel()
            let discriptionLabel = UILabel()
            let stepper = GMStepper()
            let underLineView = UIView()
            stackView.addArrangedSubview(contentView)
            contentView.addSubview(imageProduct)
            contentView.addSubview(titleProductLabel)
            contentView.addSubview(discriptionLabel)
            contentView.addSubview(stepper)
            contentView.addSubview(underLineView)
                ///set border width
            ///image product
            imageProduct.image = UIImage(named: "Chess")
            
            ///titile product label
            titleProductLabel.text = "Nhẫn cưới vàng 18K Sánh Duyên"
            titleProductLabel.numberOfLines = 2
            
            
            ///discription Label
            discriptionLabel.text = " Kích cỡ 10 • Màu vàng hồng • Nữ"
                
           ///stepper
            stepper.layer.cornerRadius = 18
            
            ///under line view
            underLineView.backgroundColor = UIColor(red: 0.325, green: 0.325, blue: 0.325, alpha: 1)
            contentView.snp.makeConstraints({(make) in
                make.width.equalTo(view.frame.size.width)
                make.height.equalTo(150)
               
            })
            imageProduct.snp.makeConstraints({(make) in
                let widthHeightImage = (60 / (UIScreen.main.bounds.width))*(UIScreen.main.bounds.width)
                print(widthHeightImage)
                make.top.equalToSuperview().offset(30)
                make.left.equalToSuperview().offset(28)
                make.width.height.equalTo(widthHeightImage)
               
            })
            titleProductLabel.snp.makeConstraints({(make) in
                
                make.top.equalToSuperview().offset(24)
                make.left.equalTo(imageProduct.snp.right).offset(15)
          
            })
            discriptionLabel.snp.makeConstraints({(make) in
                
                make.top.equalTo(titleProductLabel.snp.bottom).offset(7)
                make.left.equalTo(titleProductLabel)
          
            })
            stepper.snp.makeConstraints({(make) in
                make.top.equalTo(discriptionLabel.snp.bottom).offset(16)
                make.left.equalTo(titleProductLabel)
                make.width.equalTo(108)
                make.height.equalTo(36)
            })
            underLineView.snp.makeConstraints({(make) in
                make.bottom.equalToSuperview().offset(-1)
          
                make.left.equalToSuperview().offset(28)
                make.right.equalToSuperview().offset(-28)
                make.height.equalTo(1)
            })
        }
    }
}
