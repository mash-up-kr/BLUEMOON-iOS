//
//  LoginViewController.swift
//  Bluemoon
//
//  Created by J.A.R.V.I.S. on 2018. 11. 24..
//  Copyright © 2018년 mashup6th. All rights reserved.
//

import UIKit

@IBDesignable
class LoginViewController: UIViewController {

    @IBOutlet weak var idTextField: InputTextField!
    @IBOutlet weak var passwordTextField: InputTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        idTextField.borderStyle = .none
        idTextField.setBottomBorder()
        passwordTextField.setBottomBorder()
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
