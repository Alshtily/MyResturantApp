//
//  VC2.swift
//  MyResturantApp
//
//  Created by saad on 3/17/20.
//  Copyright © 2020 MyResturantApp. All rights reserved.
//

import UIKit

struct Item{
    let name: String
    let price: Double
    var quantity: Double = 0
    
    func totalPrice() -> Double{
        return price * quantity
    }
}

class VC2: UIViewController {
  
    
    
    var budget = 0.0
    @IBOutlet weak var BurgerLabel: UILabel!
    @IBOutlet weak var PizzaLabel: UILabel!
    @IBOutlet weak var PotatoLabel: UILabel!
    @IBOutlet weak var WaterLabel: UILabel!
    
    @IBOutlet weak var RemainBudget: UILabel!
    

    // Vairble
    var WaterPrice = 1
    var PotatoPrice = 1
    var BurgerPrice = 2
    var PizzaPrice = 2
    
    var items = [
        Item(name: "Burger", price: 2.0),
        Item(name: "Potato", price: 1.0),
        Item(name: "Pizza", price: 2.0),
        Item(name: "Water", price: 1.0),

    ]
    // End Vairble


    @IBOutlet weak var TextFieldBudget: UITextField!
    
    @IBAction func Stepper(_ sender: UIStepper) {
        // Burger
        let labels = [BurgerLabel, PotatoLabel, PizzaLabel, WaterLabel]
        
        items[sender.tag].quantity = sender.value
        labels[sender.tag]?.text = "\(items[sender.tag].quantity)"
        
        var totalPrice = 0.0
        for item in items{
            totalPrice += item.totalPrice()
        }
        let remainingBudget = budget - totalPrice
        RemainBudget.text = String(remainingBudget)
        RemainBudget.textColor = remainingBudget >= 0 ? .black : .red
       
        
        
        
        /*
        BurgerLabel.text! = String(Int(sender.value))
        var allPrice = (Int(sender.value) * PizzaPrice)
        
        if allPrice == budget {
            
           budget = budget - allPrice
            
            print(budget)
            RemainBudget.text = String(budget)
*/
        }

        

    @IBAction func SetButton(_ sender: Any) {
        budget = Double(TextFieldBudget.text!) ?? 0
        
        
        
        RemainBudget.text! = String(budget)
        
   
    }
    
    
    func ALert(title : String , Massage : String) {
        
        let alert = UIAlertController(title: "\(title)", message: "\(Massage)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK Ya Fandam 😕 ", style: .cancel, handler: nil)
        
        alert.addAction(alertAction)
        
        present(alert , animated: true , completion: nil)
        
        
    }
//
//
//    func Burger(Burger : Double) -> Double {
//        var BurgerPrice = 3.0
//    var BurgerEnd = Burger * BurgerPrice
//
//        if BurgerEnd == budget || BurgerEnd <= budget {
//           var remainBurger = budget - BurgerPrice
//
//            print("I have \(Int(Burger))Pcs")
//        }
//        else {
//            print("Your Money Not Enough")
//        }
//        return BurgerEnd
//    }
//
//    func Pizza(Pizza : Double) -> Double {
//           var PizzaPrice = 3.0
//       var PizzarEnd = Pizza * PizzaPrice
//
//           if PizzarEnd == budget || PizzarEnd <= budget {
//              var remainBurger = budget - PizzarEnd
//            budget = budget - PizzarEnd
//
//
//               print("I have \(Int(Pizza))Pcs")
//           }
//           else {
//               print("Your Money Not Enough")
//           }
//           return PizzarEnd
//       }
//       func Burger(Burger : Double) -> Double {
//           var BurgerPrice = 3.0
//       var BurgerEnd = Burger * BurgerPrice
//
//           if BurgerEnd == budget || BurgerEnd <= budget {
//              var remainBurger = budget - BurgerPrice
//
//               print("I have \(Int(Burger))Pcs")
//           }
//           else {
//               print("Your Money Not Enough")
//           }
//           return BurgerEnd
//       }

    

//    var PizzaPrice = 2.0
//    var BurgerPrice = 2.0
//    var WaterPrice = 1.0
//    var PotatoPrice = 1.0
//
    
    func Alert(title: String,massage: String) -> UIAlertController {
        let alert = UIAlertController(title: "\(title)", message: "\(massage)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ok", style: .cancel, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
        
        return alert
    }
    

       // budget = Double(TextFald?.text ?? "") ?? 0
      //  print(budget)
        
//        var Pizza = Int(PizzaLabel.text!)! ?? 0
//        var Burger = Int(BurgerLabel.text!) ?? 0
//        var Potato =  Int(PotatoLabel.text!) ?? 0
//        var Water =  Int(WaterLabel.text!) ?? 0
//
//
//let allPrice = (Double(Burger) * BurgerPrice) + (Double(Pizza) * PizzaPrice) + (Double(Potato) * PotatoPrice) + (Double(Water) * WaterPrice)
//
//    if allPrice == budget || budget >= allPrice {
//
//        RemainBudget.text = String(budget - allPrice)
//        Alert(title: "Woww!", massage: "I Have Food 🍱")
//            print("I have Food")
//
//        } else {
//            print("You Don't Have Money ")
//        Alert(title: "😭", massage: "I Don't Have Food 😭")
//
//        }
//
//    }
    override func viewDidLoad() {



    }
}
