//
//  ViewController.swift
//  Niles West Bell Schedule
//
//  Created by Alush Benitez on 4/18/19.
//  Copyright © 2019 Alush Benitez. All rights reserved.
//

import UIKit
import Firebase

var todaysDate = ""

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setColors()
        loadSchedule()
    }
    
    func setColors(){
        
    }

    func loadSchedule(){
        let cal = Calendar.current
        let components = cal.dateComponents([ .month, .day, .weekday], from: Date())
        print("date\(components)")
        let currentMonth = components.month ?? 0
        let currentDay = components.day ?? 0
        print("\(currentMonth)-\(currentDay)")
        
    }
}

