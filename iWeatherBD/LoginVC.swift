
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var TextField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: UIButton) {
        let sb:UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let homeVC: HomeViewController = sb.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
            UIApplication.shared.windows.first?.rootViewController = homeVC
            UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        let sb:UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
              let vc:SignUpViewController = sb.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
              self.navigationController?.pushViewController(vc, animated: true)
        //self.present(vc, animated: true) {
            
        //}
    }
}

