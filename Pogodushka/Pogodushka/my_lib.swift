//
//  my_lib.swift
//  Pogodushka
//
//  Created by stleon on 07.10.14.
//  Copyright (c) 2014 stleon. All rights reserved.
//

import Foundation

struct Item {
    let id: Int
    let name: String
    let temp: String
    let description: String
    let image: String
    let place: String
}

// https://stackoverflow.com/questions/24176362/nsurlconnection-using-ios-swift
class Remote: NSObject {
    
    var host = "http://stackoverflow.com"
    var query = String()
    var data: NSMutableData = NSMutableData()
    
    func connect(query:NSString) {
        self.query = query
        var url = self.document()
        var conn = NSURLConnection(request: url, delegate: self, startImmediately: true)
    }
    
    func endpoint() -> NSURL {
        var query = self.host + self.query
        return NSURL(string: query)
    }
    
    func document() -> NSURLRequest {
        return NSURLRequest( URL: self.endpoint() )
    }
    
    func connection(didReceiveResponse: NSURLConnection!, didReceiveResponse response: NSURLResponse!) {
        // Recieved a new request, clear out the data object
        self.data = NSMutableData()
    }
    
    func connection(connection: NSURLConnection!, didReceiveData conData: NSData!) {
        // Append the recieved chunk of data to our data object
        self.data.appendData(conData)
    }
    
    func connectionDidFinishLoading(connection: NSURLConnection!) {
        // Request complete, self.data should now hold the resulting info
        // Convert the retrieved data in to an object through JSON deserialization
        var err: NSError
        //var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(self.data, options:    NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
        
        println(self.data) //jsonResult.count
    }
}
