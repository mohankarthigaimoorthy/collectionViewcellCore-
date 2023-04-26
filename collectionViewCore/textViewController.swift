//
//  textViewController.swift
//  collectionViewCore
//
//  Created by Mohan K on 20/03/23.
//

import UIKit

class textViewController: UIViewController {

    @IBOutlet weak var addtext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTextField(_ sender: Any) {

    }
    

    @IBAction func createButton(_ sender: Any) {
        if (addtext.text != nil) && addtext.text != ""
        {
            teams?.append(addtext.text!)
            
        }
        print("000")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
