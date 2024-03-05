//
//  AppDelegateLogic.swift
//  Pokemon
//
//  Created by Hernandez Peralta, Ricardo Gonzalez on 05/03/24.
//

import UIKit
import Foundation

class AppDelegateLogic {
    
    private let userKey  = "UserLogged"
    private let tokenKey = "tokenLogged"
    
    func isUserLogged() -> Bool {
        return getUserLogged()
    }
    
    func token() -> String {
        return getTokenUser()
    }
     
    func setUserLogged(_ logged:Bool) {
        let defaults = UserDefaults.standard
        defaults.set(logged, forKey: userKey)
    }
    
    private func getUserLogged() ->Bool {
        let defaults = UserDefaults.standard
        return defaults.bool(forKey: userKey)
    }
    
    func setTokenUser(_ token:String) {
        let defaults = UserDefaults.standard
        defaults.set(token, forKey: userKey)
    }
    
    func getTokenUser() ->String {
        let defaults = UserDefaults.standard
        return defaults.string(forKey: tokenKey) ?? "sin token"
    }
}
