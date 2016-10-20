//
//  ViewController.swift
//  TTImagePicker
//
//  Created by tanchao的iMac on 2016/10/20.
//  Copyright © 2016年 tanchao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy private  var imageView: UIImageView = {
        let object = UIImageView()
        object.backgroundColor = UIColor.red
        return object
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(NSLayoutConstraint(item: imageView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: imageView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 80))
        view.addConstraint(NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 80))
        imageView.addOnClickListener(target: self, action: #selector(ViewController.imageViewClick(imageView:)));
    }
    func imageViewClick(imageView:UIImageView?)  {
        TTImagePicker.showImagePickerFromViewController(viewController: self, allowsEditing: true, iconView: self.imageView) { [unowned self](icon) in
            self.imageView.image = icon!
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension UIView{
    func addOnClickListener(target: AnyObject, action: Selector) {
        let gr = UITapGestureRecognizer(target: target, action: action)
        gr.numberOfTapsRequired = 1
        isUserInteractionEnabled = true;
//        userInteractionEnabled = true
        addGestureRecognizer(gr)
    }
}
