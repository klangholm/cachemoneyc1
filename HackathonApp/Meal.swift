//
//  Meal.swift
//  HackathonApp
//
//  Created by Kristian Langholm on 6/7/17.
//  Copyright © 2017 klangholm. All rights reserved.
//

import Foundation
import UIKit

struct Item {
    var food: String!
    var cost: Int!
    var customer: Profile!
}

class Meal : NSObject {
    
    fileprivate var title: String!
    fileprivate var date: String!
    fileprivate var location: String!
    fileprivate var people = [Profile]()
    fileprivate var receiptPic: UIImage?
    fileprivate var total: Int?
    fileprivate var itemList = [Item]()
    
    init(title: String, date: String, location: String, people: [Profile]){
        self.title = title
        self.date = date
        self.location = location
        self.people = people
    }
    
    var getTitle:String! {
        return title
    }
    
    var getDate:String! {
        return date
    }
    
    var getLocation: String! {
        return location
    }
    
    var getPeople: [Profile] {
        return people
    }
    
    var getReceiptPic: UIImage! {
        return receiptPic
    }
    
    var getTotal: Int! {
        return total
    }
    
    var getItemList: [Item] {
        return itemList
    }
    
    func addPerson(person: Profile!){
        self.people.append(person)
    }
    
    func setReceiptPic(pic: UIImage){
        self.receiptPic = pic
    }
    
    func setTotal(total: Int){
        self.total = total
    }
    
    func addItem(newFood: String, newCost: Int, newCustomer: Profile!){
        let item = Item(food: newFood, cost: newCost, customer: newCustomer)
        self.itemList.append(item)
    }
}
