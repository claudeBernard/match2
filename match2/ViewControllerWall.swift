import UIKit
//=======================================
class ViewControllerWall: UIViewController {
    //-------------------
    @IBOutlet weak var button: UIButton!
    //-------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        animationButtonUp()
        animationButtonDown()
    }
    //-------------------
    func animationButtonUp() {
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut, .allowUserInteraction], animations: {self.button.transform = CGAffineTransform(scaleX:2, y:2)},
                       completion: {(true) in self.animationButtonDown()})
    }
    //-------------------
    func animationButtonDown() {
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut, .allowUserInteraction], animations: {self.button.transform = CGAffineTransform(scaleX:1, y:1)},
                       completion: {(true) in self.animationButtonUp()})
    }
    //-------------------
}
