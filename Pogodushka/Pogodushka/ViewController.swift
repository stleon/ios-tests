//
//  ViewController.swift
//  Pogodushka
//
//  Created by stleon on 05.10.14.
//  Copyright (c) 2014 stleon. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    
    var myArr = [Item(id:1, name:"Понедельник, 25 июня", temp:"19°", description:"d1", image:"palm-tree.png", place:"Москва")]
    
    //@IBOutlet weak var navBar: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as? UITableViewCell
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        }
        cell!.imageView?.image = UIImage(named: myArr[indexPath.row].image)
        cell!.textLabel!.text = myArr[indexPath.row].name
        cell!.detailTextLabel!.text = myArr[indexPath.row].temp
        return cell!
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArr.count
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow() {
                let destinationViewController = segue.destinationViewController as DetailViewController
                destinationViewController.myArr = [myArr[indexPath.row]]
            }
        }
    }

}

