//
//  ProductTableViewController.swift
//  FinalAssignment_C0749456
//
//  Created by Megha Mahna on 2020-01-24.
//  Copyright © 2020 Megha. All rights reserved.
//

import UIKit
import CoreData

class ProductTableViewController: UITableViewController {
    
    var products: [Product]?

    override func viewDidLoad() {
        super.viewDidLoad()

        
        loadCoreData()
        saveCoreData()
        //NotificationCenter.default.addObserver(self, selector: #selector(saveCoreData), name: UIApplication.willResignActiveNotification, object: nil)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
       
              
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products?.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let product = products![indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell")
        cell?.textLabel?.text = product.productName

        return cell!
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func saveCoreData(){
        
               clearCoreData()
        
               let appDelegate = UIApplication.shared.delegate as! AppDelegate
                  
                let context = appDelegate.persistentContainer.viewContext
                      
                      //3rd step: write into the context
                      
                      
                let product1 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                      
                product1.setValue("book", forKey: "name")
                product1.setValue("ap1", forKey: "id")
                product1.setValue("book for Data Structure", forKey: "descriptions")
                product1.setValue(100, forKey: "price")
               
               
                let product2 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
               
                product2.setValue("pen", forKey: "name")
                product2.setValue("ap1", forKey: "id")
                product2.setValue("pen", forKey: "descriptions")
                       product2.setValue(100, forKey: "price")
        
                let product3 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                               
                product1.setValue("book", forKey: "name")
                product1.setValue("ap1", forKey: "id")
                product1.setValue("book for Data Structure", forKey: "descriptions")
                product1.setValue(100, forKey: "price")
                        
                        
                let product4 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                        
                product2.setValue("pen", forKey: "name")
                product2.setValue("ap1", forKey: "id")
                product2.setValue("pen", forKey: "descriptions")
                product2.setValue(100, forKey: "price")
        
                let product5 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                                      
                product1.setValue("book", forKey: "name")
                product1.setValue("ap1", forKey: "id")
                product1.setValue("book for Data Structure", forKey: "descriptions")
                product1.setValue(100, forKey: "price")
                               
                               
                let product6 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                               
                product2.setValue("pen", forKey: "name")
                product2.setValue("ap1", forKey: "id")
                product2.setValue("pen", forKey: "descriptions")
                product2.setValue(100, forKey: "price")
        
                let product7 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                                      
                product1.setValue("book", forKey: "name")
                product1.setValue("ap1", forKey: "id")
                product1.setValue("book for Data Structure", forKey: "descriptions")
                product1.setValue(100, forKey: "price")
                               
                               
                let product8 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
                               
                product2.setValue("pen", forKey: "name")
                product2.setValue("ap1", forKey: "id")
                product2.setValue("pen", forKey: "descriptions")
                product2.setValue(100, forKey: "price")
        
                let product9 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
               
               product1.setValue("book", forKey: "name")
               product1.setValue("ap1", forKey: "id")
               product1.setValue("book for Data Structure", forKey: "descriptions")
               product1.setValue(100, forKey: "price")
        
        
                let product10 = NSEntityDescription.insertNewObject(forEntityName: "ProductModel", into: context)
        
                product2.setValue("pen", forKey: "name")
                product2.setValue("ap1", forKey: "id")
                product2.setValue("pen", forKey: "descriptions")
                product2.setValue(100, forKey: "price")
                      
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
        
        products = [Product]()
        
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
                    products?.append(Product(productName: productName, productId: productId, productDescription: productDescription, price: productPrice))
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
