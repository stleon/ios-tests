//
//  DetailViewController.swift
//  Pogodushka
//
//  Created by stleon on 07.10.14.
//  Copyright (c) 2014 stleon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var myArr = [Item(id:1, name:"1123", temp:"0", description:"d1", image:"palm-tree.png", place:"Москва")]
    
    @IBOutlet weak var nameLabel: UILabel!
    
    //init (coder aDecoder:NSCoder){
    //    super.init(coder: aDecoder)
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myArr[0].name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
