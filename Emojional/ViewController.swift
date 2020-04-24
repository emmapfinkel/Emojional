
import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😀": "happy", "☺️": "shy", "😎": "confident", "🥱": "tired", "😠": "angry", "🤨": "annoyed"]
    
    var customMessages = [
        "happy": ["I love to see your smile!","I love your positivity!", "Your smile is contagious!", "Keep it up!"],
        "shy": ["You can do this!", "You are so awesome!", "You've got this!", "Picture everyone in their underwear!"],
        "confident": ["You are looking great today!", "You are so confident!", "Your energy is amazing!", "Wow! Your confidence is contagious!"],
        "tired": ["Wake up sleepy head!", "Do 10 jumping jacks!", "Eat a healthy snack!", "Make a cup of coffee"],
        "angry": ["Take 3 deep breaths", "Think of your happy place", "Go for a quick walk", "Call your best friend"],
        "annoyed": ["Walk away from the situation", "Only keep positive people in your life", "Take 3 deep breaths", "Ignore them!"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
  
        let selectedEmotion = sender.titleLabel?.text
        
        let options = customMessages[emojis[selectedEmotion!]!]!
        
        let randomNumber = Int.random(in: 1..<4)
        let emojiMessage = options[randomNumber]
        
        let alertController = UIAlertController(title: "We all get EMOJIonal!", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)

        alertController.addAction(UIAlertAction(title: "Thanks! I'm feeling better!", style: UIAlertAction.Style.default, handler: nil))
                
        present(alertController, animated: true, completion: nil)
    }

}

