import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let title = sender.title(for: .normal)
        playSound(title: title ?? "C")
    }
    
    func playSound(title: String) {
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

