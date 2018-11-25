//
//  SignupViewController.swift
//  Bluemoon
//
//  Created by J.A.R.V.I.S. on 2018. 11. 25..
//  Copyright © 2018년 mashup6th. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputID: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var inputConfirmPassword: UITextField!
    @IBOutlet weak var startButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        inputID.delegate = self
        inputPassword.delegate = self
        inputConfirmPassword.delegate = self
        startButton.isEnabled = false
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        if checkAllTextFieldFilled() {
            startButton.isEnabled = true
            startButton.backgroundColor = #colorLiteral(red: 0.1803921569, green: 0.6117647059, blue: 1, alpha: 1)
            startButton.setTitleColor(UIColor.white, for: .normal)
        } else {
            startButton.isEnabled = false
            startButton.backgroundColor = UIColor.white
            startButton.setTitleColor(#colorLiteral(red: 0.1803921569, green: 0.6117647059, blue: 1, alpha: 1), for: .normal)
        }
    }

    func checkAllTextFieldFilled() -> Bool {
        if inputID.text?.isEmpty ?? false {
            return false
        }
        if inputPassword.text?.isEmpty ?? false {
            return false
        }
        if inputConfirmPassword.text?.isEmpty ?? false {
            return false
        }

        return true
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
