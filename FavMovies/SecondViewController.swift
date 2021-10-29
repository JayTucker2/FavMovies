//
//  SecondViewController.swift
//  FavMovies
//
//  Created by JAYLAN TUCKER on 10/19/21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    var inc : Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = "\(inc.title)"
        label2.text = "\(String(inc.rating))"
        label3.text = "\(inc.description)"
        
        // Do any additional setup after loading the view.
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
