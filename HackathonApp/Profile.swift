//
//  Profile.swift
//  HackathonApp
//
//  Created by Yiheyis, Leoul on 6/7/17.
//  Copyright © 2017 klangholm. All rights reserved.
//

import UIKit

struct Tab {
    var person: String
    var description: String
    var price: Int
}

class Profile : NSObject {
    
    fileprivate var name: String
    fileprivate var pic: UIImage?
    fileprivate var runningTabs = [Tab]()//Array<Tab>?
    
    init(name: String) {
        self.name = name
    }
    
    
    func addTab(new: Tab) {
        let lim = runningTabs.count
        
        runningTabs[lim] = new
        
    }
    
    var getName: String {
        return self.name
    }
    
    var getRunningTabs: Array<Tab> {
        return self.runningTabs
    }
    
    
}
