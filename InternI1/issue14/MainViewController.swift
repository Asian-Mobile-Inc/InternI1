//
//  MainViewController.swift
//  InternI1
//
//  Created by Thạnh Dương Hoàng on 3/4/25.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        let homeNavi = UINavigationController(rootViewController: homeVC)
        
        let messageVC = MessageViewController()
        messageVC.tabBarItem = UITabBarItem(title: "Message", image: UIImage(systemName: "message.fill"), tag: 1)
        messageVC.tabBarItem.badgeValue = "99"
        messageVC.tabBarItem.badgeColor = .red
        let messageNavi = UINavigationController(rootViewController: messageVC)
        
        let friendVC = FriendViewController()
        friendVC.tabBarItem = UITabBarItem(title: "Friend", image: UIImage(systemName: "person.3.fill"), tag: 2)
        let friendNavi = UINavigationController(rootViewController: friendVC)
        
        let settingVC = SettingViewController()
        settingVC.tabBarItem = UITabBarItem(title: "Setting", image: UIImage(systemName: "gearshape.fill"), tag: 3)
        let settingNavi = UINavigationController(rootViewController: settingVC)
        
        self.tabBar.tintColor = .white
        self.tabBar.unselectedItemTintColor = .black
        self.tabBar.backgroundColor = .orange
        
        self.viewControllers = [homeNavi, messageNavi, friendNavi, settingNavi]
        
    }
}

extension MainViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected tab: \(tabBarController.selectedIndex)")
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if let index = tabBarController.viewControllers?.firstIndex(of: viewController), index == 2 {
            print("Tab Friend is locked!")
            return false
        }
        return true
    }
}
