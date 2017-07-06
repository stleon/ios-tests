//
//  MainViewController.swift
//  Pogodushka
//
//  Created by stleon on 10.10.14.
//  Copyright (c) 2014 stleon. All rights reserved.
//

import UIKit
//import CoreLocation

class MainViewController: UITableViewController {
    
    var myArr = [Item(id:1, name:"Понедельник, 25 июня", temp:"19°", description:"d1", image:"palm-tree.png", place:"Москва"),
        Item(id:2, name:"Вторник, 26 июня", temp:"20°", description:"d2", image:"palm-tree.png", place:"Москва"),
        Item(id:3, name:"Среда, 27 июня", temp:"20°", description:"d3", image:"palm-tree.png", place:"Москва"),
        Item(id:4, name:"Четверг, 28 июня", temp:"19°", description:"d4", image:"palm-tree.png", place:"Москва"),
        Item(id:5, name:"Пятница, 29 июня", temp:"19°", description:"d4", image:"palm-tree.png", place:"Москва"),
        Item(id:6, name:"Суббота, 30 июня", temp:"19°", description:"d4", image:"palm-tree.png", place:"Москва"),
        Item(id:7, name:"Воскресенье, 31 июня", temp:"18°", description:"d4", image:"palm-tree.png", place:"Москва")]
    
    // http request goes here
    // http://stackoverflow.com/questions/24016142/how-to-make-an-http-request-in-swift
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        //var remote = Remote()
        //remote.connect("/questions")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell_main") as? UITableViewCell
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        }
        cell!.imageView?.image = UIImage(named: myArr[indexPath.row].image)
        cell!.textLabel!.text = myArr[indexPath.row].place
        cell!.detailTextLabel!.text = myArr[indexPath.row].temp
        return cell!
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArr.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlace" {
            if let indexPath = tableView.indexPathForSelectedRow() {
                let destinationViewController = segue.destinationViewController as ViewController
                destinationViewController.myArr = [myArr[indexPath.row]]
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
