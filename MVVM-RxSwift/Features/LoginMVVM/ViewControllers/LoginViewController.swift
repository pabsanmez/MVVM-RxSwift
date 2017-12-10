//
//  LoginViewController.swift
//  MVVM-RxSwift
//
//  Created by Pablo Sánchez Gómez on 10/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: UIViewController {
    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnFacebook: UIButton!
    
    fileprivate let disposeBag = DisposeBag()
    let loginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindToViewModel()
        bindFromViewModel()        
    }
    
    func bindToViewModel(){
        textFieldUsername.rx.text
            .orEmpty
            .bind(to: loginViewModel.username)
            .disposed(by: disposeBag)

        textFieldPassword.rx.text
            .orEmpty
            .bind(to: loginViewModel.password)
            .disposed(by: disposeBag)
    }
    
    func bindFromViewModel() {
        loginViewModel.isValid
            .bind(to: btnSignIn.rx.isEnabled)
            .disposed(by: disposeBag)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
