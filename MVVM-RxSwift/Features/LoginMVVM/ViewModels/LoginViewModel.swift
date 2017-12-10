//
//  LoginViewModel.swift
//  MVVM-RxSwift
//
//  Created by Pablo Sánchez Gómez on 10/12/17.
//  Copyright © 2017 Pablo Sánchez Gómez. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class LoginViewModel {
  
  var username = Variable<String>("")
  var password = Variable<String>("")
  
  var isValid : Observable<Bool> {
    return Observable.combineLatest(self.username.asObservable(), self.password.asObservable()) {
      username, password in
      return username.count > 0 && password.count > 0
    }
  }
  
  
  init(){ }
  
  
  
}
