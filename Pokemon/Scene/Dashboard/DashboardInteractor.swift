//
//  DashboardInteractor.swift
//
//  Created by Ricardo Gonzalez on 05/03/24.
//

import UIKit

class DashboardInteractor: PresenterToInteractorDashboardProtocol {
    
    // MARK: Properties
    weak var presenter: InteractorToPresenterDashboardProtocol?
    
    var path = "https://pokeapi.co/api/v2/pokemon/"

    func getPokemon() {
        let randomInt = Int.random(in: 1..<150)
        DataManager().fetchData(responseModel: Pokemon.self, path: "\(path)\(String(randomInt))", method: .get) { [weak self] result in
            switch result {
            case .success(let model):
                debugPrint(model as! Pokemon)
                self?.presenter?.showDetailPokemon(item: model as! Pokemon)
            case .failure(let fail):
                debugPrint(fail)
            }
        }
    }
}
