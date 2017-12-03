//
//  ViewController.swift
//  Reliable Burgers
//
//  Created by Ariel Elkin on 24/11/2017.
//  Copyright © 2017 SitePoint. All rights reserved.
//

import UIKit
import AppCenterAnalytics
import AppCenterCrashes

class AnalyticsConstants {

    static let ViewedProduct = "Viewed Product"
    // ... etc
}

enum CalorieCounterError: Error {
    case InvalidCaloriesPerHamburger
}

class CalorieCounter {

    let maxDailyCalories = 2200

    var caloriesPerBurger = 550 {
        didSet {
            if caloriesPerBurger <= 0 {
                caloriesPerBurger = 550
            }
        }
    }

    private var totalCaloriesConsumedToday = 0

    func add(caloriesToAdd: Int) {
        totalCaloriesConsumedToday += caloriesToAdd
    }

    var hamburgersICanStillEatToday: Int {
        return (maxDailyCalories - totalCaloriesConsumedToday) / caloriesPerBurger
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        MSAnalytics.trackEvent(AnalyticsConstants.ViewedProduct, withProperties: ["ID": "23432", "Name": "Bacon Burger"])

        Timer.scheduledTimer(withTimeInterval: 4, repeats: false) { (timer) in
            MSCrashes.generateTestCrash()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

