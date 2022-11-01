//
//  Routes.swift
//  Foodly
//
//  Created by Akniyet Turdybay on 24/10/2022.
//

import UIKit

class Routes {
	
	func skippedToLogin() {
		let newStoryboard = UIStoryboard(name: "Login", bundle: nil)
		let newController = newStoryboard
			.instantiateViewController(identifier: "LoginViewController") as LoginViewController
		newController.modalTransitionStyle = .crossDissolve
		newController.modalPresentationStyle = .fullScreen
        let onboardingVC = OnboardingViewController()
        onboardingVC.present(newController, animated: true, completion: nil)
	}
	
}
