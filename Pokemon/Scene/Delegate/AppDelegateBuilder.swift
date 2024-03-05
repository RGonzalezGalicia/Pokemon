//
//  AppDelegateBuilder.swift
//  Pokemon
//
//  Created by Hernandez Peralta, Ricardo Gonzalez on 05/03/24.
//

import UIKit
import Foundation

class AppDelegateBuilder {
    
    var logic : AppDelegateLogic = AppDelegateLogic()
    
    func createRootScene() -> UIViewController {
        DashboardRouter.createModule()
    }
}
