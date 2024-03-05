//
//  DashboardProtocols.swift
//
//  Created by Ricardo Gonzalez on 05/03/24.
//

import UIKit

// MARK: View Output (Presenter -> View)
protocol PresenterToViewDashboardProtocol: AnyObject {
    var presenter: ViewToPresenterDashboardProtocol? { get set}
    func showDetailPokemon(item: Pokemon)
}

// MARK: View Input (View -> Presenter)
protocol ViewToPresenterDashboardProtocol: AnyObject {
    var view: PresenterToViewDashboardProtocol? { get set }
    var interactor: PresenterToInteractorDashboardProtocol? { get set }
    var router: PresenterToRouterDashboardProtocol? { get set }
    func getPokemon()
}

// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorDashboardProtocol: AnyObject {
    var presenter: InteractorToPresenterDashboardProtocol? { get set }
    func getPokemon()
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterDashboardProtocol: AnyObject {
    func showDetailPokemon(item: Pokemon)
}

// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterDashboardProtocol {

}
