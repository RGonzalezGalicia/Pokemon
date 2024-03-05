//
//  DashboardPresenter.swift
//
//  Created by Ricardo Gonzalez on 05/03/24.
//

import UIKit

class DashboardPresenter: ViewToPresenterDashboardProtocol {

    // MARK: Properties
    weak var view: PresenterToViewDashboardProtocol?
    var interactor: PresenterToInteractorDashboardProtocol?
    var router: PresenterToRouterDashboardProtocol?
    
    func getPokemon() {
        interactor?.getPokemon()
    }
}

extension DashboardPresenter: InteractorToPresenterDashboardProtocol {
    func showDetailPokemon(item: Pokemon) {
        view?.showDetailPokemon(item: item)
    }
    
}
