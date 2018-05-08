//
//  ViewController.swift
//  AppTest3
//
//  Created by Carlos Eduardo Hernandez Aguilar on 06/05/18.
//  Copyright © 2018 Carlos Eduardo Hernandez Aguilar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(self.appTest3(start: 1923, end: 2018))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func appTest3(start: Int,end :Int) -> String {
        
        var years = start
        
        var yearsArray = Array<Int>()
        
        for _ in start...end {
            
            if(self.isLeapYear(years)){
                yearsArray.append(years)
            }
            years = years + 1
        }
        var leapYears = ""
        print("Años bisiestos: \(yearsArray)")
        for y in yearsArray{
            leapYears = leapYears + "\(y)@"
        }
        
        return leapYears
    }
    
    func isLeapYear(_ year: Int) -> Bool {
        
        let isLeapYear = ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
        
        return isLeapYear
    }
}

