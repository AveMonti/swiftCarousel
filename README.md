# Swift Carousel

<img src="/img/gif.gif" height="600" width="300" />

* swift 

## Getting started

Copy files from sorce to your project and create bridge
<br>
<img src="/img/img1.png" height="430" width="739" />

Add to bridge header 
<br>
<img src="/img/img2.png" height="137" width="759" />

Add UIView item on your story board witch class iCarousel
<br>
<img src="/img/img3.png" height="300" width="800" />

Add DataSorce and Delegate 
<br>
<img src="/img/img4.png" height="300" width="800" />

## Code VC

```
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

```

## Code Ex

```
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

```

