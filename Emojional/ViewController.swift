
import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😀": "happy", "☺️": "shy", "😎": "confident", "🥱": "tired", "😠": "angry", "🤨": "annoyed"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
  
        let selectedEmotion = sender.titleLabel?.text
        
        let alertController = UIAlertController(title: "We all get EMOJIonal!", message: emojis[selectedEmotion!], preferredStyle: UIAlertController.Style.alert)

    
        alertController.addAction(UIAlertAction(title: "Thanks! I'm feeling better!", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

}

