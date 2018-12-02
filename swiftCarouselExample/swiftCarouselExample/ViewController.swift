//
//  ViewController.swift
//  swiftCarouselExample
//
//  Created by Mateusz Chojnacki on 02/12/2018.
//  Copyright © 2018 Mateusz Chojnacki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iCarouselView: iCarousel!
    
    
    var imgArray = [ UIImage(named: "screen1"),
                     UIImage(named: "screen1"),
                     UIImage(named: "screen1"),
                     UIImage(named: "screen1"),
                     UIImage(named: "screen1"),
                     UIImage(named: "screen1")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iCarouselView.type = .linear
        iCarouselView.contentMode = .scaleToFill
        
    }
}

extension ViewController : iCarouselDelegate, iCarouselDataSource {
    func numberOfItems(in carousel: iCarousel) -> Int {
        return imgArray.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        var imageView: UIImageView!
        if view == nil {
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width - 90, height: self.view.frame.height - 90))
            imageView.contentMode = .scaleAspectFit
        }else {
            imageView = view as? UIImageView
        }
        
        imageView.image = imgArray[index]
        return imageView
    }
    
    
}

