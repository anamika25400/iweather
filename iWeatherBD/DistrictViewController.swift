

import UIKit

class DistrictViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

        let list = ["Khagrachhari","Rangamati","Bandorban","Dhaka"]
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return(list.count)
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            cell?.textLabel?.text = list[indexPath.row]
            return cell!
        }
        

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }

    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
         self.navigationController?.popViewController(animated: true)
    }
    
    }

