//
//  DetailViewController.swift
//  FinalAssignment_C0749456
//
//  Created by Megha Mahna on 2020-01-24.
//  Copyright © 2020 Megha. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCoreData()
        saveCoreData()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
//    @objc func saveCoreData(){
//
//               clearCoreData()
//
//               let appDelegate = UIApplication.shared.delegate as! AppDelegate
//
//                let context = appDelegate.persistentContainer.viewContext
//
//                      //3rd step: write into the context
//
//
//                let product1 = NSEntityDescription.insertNewObject(forEntityName: "ProductMod", into: context)
//
//                product1.setValue("Heater", forKey: "product_name")
//                product1.setValue("ab0", forKey: "product_id")
//                product1.setValue("This is Heater", forKey: "product_descriptions")
//                product1.setValue(140, forKey: "product_price")
//
//
//
//                      // 4th step: save context
//
//                      do{
//                          try context.save()
//                          print(product1, "is saved")
//                      }
//                      catch{
//                          print(error)
//                      }
//    }
//
//
//
//    func loadCoreData(){
//
//
//
//        //create an instance of app delegate
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//
//        /*
//            Second we need the context
//            This context is the manager like location manager, audio manager etc
//         */
//
//        let managedContext = appDelegate.persistentContainer.viewContext
//
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ProductMod")
//
//        do{
//            let results = try managedContext.fetch(fetchRequest)
//            if results is [NSManagedObject]{
//                for result in results as! [NSManagedObject]{
//                    let productName = result.value(forKey: "product_name") as! String
//                    let productId = result.value(forKey: "product_id") as! String
//                    let productDescription = result.value(forKey: "product_descriptions") as! String
//                    let productPrice = result.value(forKey: "product_price") as! Int
//                    nameField.text = productName
//                    idField.text = productId
//                    priceField.text = String(productPrice)
//                    descriptionField.text = productDescription
//                }
//            }
//        }
//        catch{
//            print(error)
//        }
//
//
//    }
//
//    func clearCoreData(){
//
//        //create an instance of app delegate
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//
//        /*
//            Second we need the context
//            This context is the manager like location manager, audio manager etc
//         */
//
//        let managedContext = appDelegate.persistentContainer.viewContext
//
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ProductMod")
//
//        fetchRequest.returnsObjectsAsFaults = false
//
//        do{
//            let results = try managedContext.fetch(fetchRequest)
//            for managedObjects in results{
//                if let managedObjectData = managedObjects as? NSManagedObject{
//                    managedContext.delete(managedObjectData)
//                }
//            }
//        }
//        catch{
//            print(error)
//        }
//    }
    
    func saveCoreData(){
        
               clearCoreData()
        
               let appDelegate = UIApplication.shared.delegate as! AppDelegate
                  
                let context = appDelegate.persistentContainer.viewContext
                      
                      //3rd step: write into the context
                      
                      
                let product1 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                      
                product1.setValue("Television", forKey: "name")
                product1.setValue("ab1", forKey: "id")
                product1.setValue("This is Tv", forKey: "descriptions")
                product1.setValue(200, forKey: "price")
               
               
                let product2 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
               
                product2.setValue("Washing Machine", forKey: "name")
                product2.setValue("ab2", forKey: "id")
                product2.setValue("This is Washing Machine", forKey: "descriptions")
                       product2.setValue(210, forKey: "price")
        
                let product3 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                               
                product3.setValue("Mixer", forKey: "name")
                product3.setValue("ab3", forKey: "id")
                product3.setValue("This is mixer", forKey: "descriptions")
                product3.setValue(100, forKey: "price")
                        
                        
                let product4 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                        
                product4.setValue("Vaccuum Cleaner", forKey: "name")
                product4.setValue("ab4", forKey: "id")
                product4.setValue("This is Vaccuum Cleaner", forKey: "descriptions")
                product4.setValue(100, forKey: "price")
        
                let product5 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                                      
                product5.setValue("Radio", forKey: "name")
                product5.setValue("ab5", forKey: "id")
                product5.setValue("This is Radio", forKey: "descriptions")
                product5.setValue(150, forKey: "price")
                               
                               
                let product6 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                               
                product6.setValue("Computer", forKey: "name")
                product6.setValue("ab6", forKey: "id")
                product6.setValue("This is Computer", forKey: "descriptions")
                product6.setValue(2000, forKey: "price")
        
                let product7 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                                      
                product7.setValue("Mouse", forKey: "name")
                product7.setValue("ab7", forKey: "id")
                product7.setValue("This is Mouse", forKey: "descriptions")
                product7.setValue(80, forKey: "price")
                               
                               
                let product8 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                               
                product8.setValue("Keyboard", forKey: "name")
                product8.setValue("ab8", forKey: "id")
                product8.setValue("This is Keyboard", forKey: "descriptions")
                product8.setValue(70, forKey: "price")
        
                let product9 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
               
               product9.setValue("Ipad", forKey: "name")
               product9.setValue("ab9", forKey: "id")
               product9.setValue("This is Ipad", forKey: "descriptions")
               product9.setValue(1500, forKey: "price")
        
        
                let product10 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
        
                product10.setValue("Mobile", forKey: "name")
                product10.setValue("ab10", forKey: "id")
                product10.setValue("This is Mobile", forKey: "descriptions")
                product10.setValue(1800, forKey: "price")
                      
                      // 4th step: save context
                      
                      do{
                          try context.save()
                          print(product1, "is saved")
                          print(product2, "is saved")
                      }
                      catch{
                          print(error)
                      }
    }
    
    func loadCoreData(){
        
       // products = [Product]()
        
        //create an instance of app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
            
        /*
            Second we need the context
            This context is the manager like location manager, audio manager etc
         */
                
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ProductModel")
        
        do{
            let results = try managedContext.fetch(fetchRequest)
            if results is [NSManagedObject]{
                for result in results as! [NSManagedObject]{
                    let productName = result.value(forKey: "name") as! String
                    let productId = result.value(forKey: "id") as! String
                    let productDescription = result.value(forKey: "descriptions") as! String
                    let productPrice = result.value(forKey: "price") as! Int
                  //  products?.append(Product(productName: productName, productId: productId, productDescription: productDescription, price: productPrice))
                    nameField.text = productName
                                        idField.text = productId
                                        priceField.text = String(productPrice)
                                        descriptionField.text = productDescription
                }
            }
        }
        catch{
            print(error)
        }
        
        
    }
    
    func clearCoreData(){
        
        //create an instance of app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
            
        /*
            Second we need the context
            This context is the manager like location manager, audio manager etc
         */
                
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ProductModel")
        
        fetchRequest.returnsObjectsAsFaults = false
        
        do{
            let results = try managedContext.fetch(fetchRequest)
            for managedObjects in results{
                if let managedObjectData = managedObjects as? NSManagedObject{
                    managedContext.delete(managedObjectData)
                }
            }
        }
        catch{
            print(error)
        }
    }


   

}
