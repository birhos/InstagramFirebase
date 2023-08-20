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

    private func configureViewControllers() {
        view.backgroundColor = .white
        self.tabBar.tintColor = .black

        let feed = templateNavigationController(unselectedImage: UIImage(named: "home_unselected")!, selectedImage: UIImage(named: "home_selected")!, rootViewController: FeedController())
        let search = templateNavigationController(unselectedImage: UIImage(named: "search_unselected")!, selectedImage: UIImage(named: "search_selected")!, rootViewController: SearchController())
        let imageSelector = templateNavigationController(unselectedImage: UIImage(named: "plus_unselected")!, selectedImage: UIImage(named: "plus_unselected")!, rootViewController: ImageSelectorController())
        let notification = templateNavigationController(unselectedImage: UIImage(named: "like_unselected")!, selectedImage: UIImage(named: "like_selected")!, rootViewController: NotificationController())
        let profile = templateNavigationController(unselectedImage: UIImage(named: "profile_unselected")!, selectedImage: UIImage(named: "profile_selected")!, rootViewController: ProfileController())

        viewControllers = [feed, search, imageSelector, notification, profile]
        
        updateTabBarAppearance()
    }
    
    @available(iOS 15.0, *)
    private func updateTabBarAppearance() {
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        
        let barTintColor: UIColor = .white
        tabBarAppearance.backgroundColor = barTintColor
        
        updateTabBarItemAppearance(appearance: tabBarAppearance.compactInlineLayoutAppearance)
        updateTabBarItemAppearance(appearance: tabBarAppearance.inlineLayoutAppearance)
        updateTabBarItemAppearance(appearance: tabBarAppearance.stackedLayoutAppearance)
        
        self.tabBar.standardAppearance = tabBarAppearance
        self.tabBar.scrollEdgeAppearance = tabBarAppearance
    }

    @available(iOS 13.0, *)
    private func updateTabBarItemAppearance(appearance: UITabBarItemAppearance) {
        let tintColor: UIColor = .black
        let unselectedItemTintColor: UIColor = .gray
        
        appearance.selected.iconColor = tintColor
        appearance.normal.iconColor = unselectedItemTintColor
    }

    private func templateNavigationController(
        unselectedImage: UIImage,
        selectedImage: UIImage,
        rootViewController: UIViewController
    ) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
}
