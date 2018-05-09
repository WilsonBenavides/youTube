//
//  Extensions.swift
//  youTube
//
//  Created by willix on 8/05/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictinary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictinary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictinary))
    }
}

extension UIImageView {
    
    func loadImageUsingUrlString(urlString: String) {
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!, completionHandler:  { (data, responses, error) in
            
            if error != nil {
                print(error ?? "error handling")
                return
            }
            
            DispatchQueue.main.async {
                self.image = UIImage(data: data!)
            }
            
        }).resume()
    }
}








