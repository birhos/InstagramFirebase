//
//  MainTabController.swift
//  InstagramFirebase
//
//  Created by Haydar Demir on 19.08.2023.
//

import UIKit

final class MainTabController: UITabBarController {
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    // MARK: Helpers
    
    func configureViewControllers() {
        view.backgroundColor = .white
        
        let feed = FeedController()
        let search = SearchController()
        let imageSelector = ImageSelectorController()
        let notification = NotificationController()
        let profile = ProfileController()
        
        viewControllers = [feed, search, imageSelector, notification, profile]
    }
}
