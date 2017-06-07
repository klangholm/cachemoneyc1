//
//  Profile.swift
//  HackathonApp
//
//  Created by Yiheyis, Leoul on 6/7/17.
//  Copyright © 2017 klangholm. All rights reserved.
//

import UIKit

struct tab {
    var person: String
    var description: String
    var price: Int
}

class Profile : NSObject {
    
    fileprivate var name: String
    fileprivate var pic: UIImage?
    fileprivate var runningTabs: Array<tab>?
    
    init(name: String) {
        self.name = name
    }
    
    
    func addTab(new: tab) {
        letlim = runningTabs?.count
        
        runningTabs?[lim!] = new
        
    }
    
    var getName: String {
        return self.name
    }
    
    var getRunningTabs: Array<tab> {
        return self.runningTabs!
    }
    
    
}
