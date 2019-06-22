

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var selectView: UIButton!
    @IBOutlet weak var segueSwitch: UISwitch!
    @IBOutlet weak var sgmtColorSwitch: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    @IBAction func sgmtSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            performSegue(withIdentifier: "Green", sender: nil)
        } else if sender.selectedSegmentIndex == 1 {
            performSegue(withIdentifier: "Yellow", sender: nil)
            
        }
    }
    
    @IBAction func viewButtonTapped(_ sender: UIButton) {
        let colorSelectAlert = UIAlertController(title: "색깔 선택", message: "뷰의 색을 선택하시겠습니까?", preferredStyle: .actionSheet)
        
        let yellowAction = UIAlertAction(title: "Yellow", style: .default, handler: { ACTION in self.performSegue(withIdentifier: "Yellow", sender: nil)})
        
        let greenAction = UIAlertAction(title: "Green", style: .default, handler: { ACTION in self.performSegue(withIdentifier: "Green", sender: nil)})
        

        let cancelAction = UIAlertAction(title: "아니오", style: .cancel, handler: nil)

        colorSelectAlert.addAction(yellowAction)
        colorSelectAlert.addAction(greenAction)
        colorSelectAlert.addAction(cancelAction)
        colorSelectAlert.popoverPresentationController?.sourceView = sender
        
        present(colorSelectAlert, animated: true, completion: nil)

    }
    
}

