//
//  FollowerListVC.swift
//  GHGuide
//
//  Created by ertugrul on 15.02.2024.
//

import UIKit

class FollowerListVC: UIViewController {

var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //MARK: - NetworkManager with Result Type
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
            case .success(let followers):
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Bad Stuff Happend", message: error.rawValue, buttonTitle: "Ok")
                
            }
        }
        
        /*
        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, error) in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Bad Stuff Happend", message: error!.rawValue, buttonTitle: "Ok")
                return
            }
            print("followers.count = \(followers.count)")
            print(followers)
        }
         */

    }
    
    override func viewWillAppear(_ animated: Bool) {
       // navigationController?.isNavigationBarHidden = false
        navigationController?.setNavigationBarHidden(false, animated: true)

    }
}
