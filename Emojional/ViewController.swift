
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        // when a user clicks on a button, a randomly generated message should pop up in the alert box
        // related to how the person is feeling
        
        let alertController = UIAlertController(title: "We all get EMOJIonal!", message: "You got this!", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Thanks! I'm feeling better!", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

}

