//
//  DashboardRouter.swift
//
//  Created by Ricardo Gonzalez on 05/03/24.
//

import UIKit

class DashboardRouter {
    weak var viewController: UIViewController?
    var view: DashboardVC?
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = DashboardVC.initWithNibName()
        let interactor = DashboardInteractor()
        let router = DashboardRouter()
        let presenter = DashboardPresenter()
        
        viewController.presenter = presenter
        
        presenter.router = router
        presenter.view = viewController
        presenter.interactor = interactor
        interactor.presenter = presenter
        router.viewController = viewController
        
        return viewController
    }
    
}

extension DashboardRouter: PresenterToRouterDashboardProtocol  {

}
