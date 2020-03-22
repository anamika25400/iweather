

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var txtFirstName: UITextField!
    
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBOutlet weak var txtMobileNo: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtGender: UISegmentedControl!
    
    @IBOutlet weak var txtDistrict: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
       let sb:UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
       let homeVC: HomeViewController = sb.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
           UIApplication.shared.windows.first?.rootViewController = homeVC
           UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
   
    
   
    @IBAction func districtBtnAction(_ sender: Any) {
        let sb:UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc:DistrictViewController = sb.instantiateViewController(identifier: "DistrictViewController") as! DistrictViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
        }
        
    }



