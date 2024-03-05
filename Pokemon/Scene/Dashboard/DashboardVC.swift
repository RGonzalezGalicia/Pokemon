//
//  DashboardVC.swift
//
//  Created by Ricardo Gonzalez on 28/08/23.
//
import UIKit
import Foundation

class DashboardVC: UIViewController {
    
    @IBOutlet weak var headerImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    
    
   
    
    var tags = [TypeElement]()
    
    
    // MARK: - Lifecycle Methods

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Second Call the services
       
        presenter?.getPokemon()
        let timer = Timer.scheduledTimer(timeInterval: 30.0, target: self, selector: #selector(nextPokemon), userInfo: nil, repeats: true)
        
    }
    
    @objc func nextPokemon() {
        presenter?.getPokemon()
    }
    
    
    @IBAction func continueAction(_ sender: Any) {
        presenter?.getPokemon()
    }
    
    public static func initWithNibName() -> DashboardVC {
        let bundle = Bundle(for: DashboardVC.self)
        let newView = DashboardVC(nibName: "DashboardViewController", bundle: bundle)
        return newView
    }

    // MARK: - Properties
    var presenter: ViewToPresenterDashboardProtocol?
}

extension DashboardVC: PresenterToViewDashboardProtocol{
    // TODO: Implement View Output Methods
    
    func showDetailPokemon(item: Pokemon) {
        headerImg.imageFromServerURL(urlString: item.sprites.other?.officialArtwork?.frontDefault ?? "")
        nameLbl.text = item.name.uppercased()
        heightLbl.text = "\(item.height)"
        weightLbl.text = "\(item.weight)"
        
    }
}
