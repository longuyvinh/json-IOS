//
//  ViewController.swift
//  magicIOS
//
//  Created by macbook on 4/4/16.
//  Copyright © 2016 magic. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var listing = [ObjectNews]()
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDatabase()
        configureTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listing.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "myCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! myCustomCell
        //print( indexPath.row )
        let item  = listing[indexPath.row]
        cell.titleCell.text = item.title
        cell.bodyCell.text = item.body
        return cell
        
    }
    
    func configureTableView() {
        myTableView.rowHeight = UITableViewAutomaticDimension
        myTableView.estimatedRowHeight = 160.0
    }
    
    func loadDatabase(){
        Alamofire.request(.GET, "http://codecuibap.com/json.html")
            .responseJSON { response in switch response.result {
            case .Success(let JSON):
                let jsonListing = JSON["results"] as? NSArray
                
                for item in jsonListing as! [AnyObject]{
                    let title = item.valueForKey("title") as? String
                    let body = item.valueForKey("body") as? String
                    self.listing.append(ObjectNews(titleIn: title! as String, bodyIn: body! as String))
                    
                }
                self.myTableView.reloadData()
            case .Failure(let error):
                print("Request failed with error: \(error)")
                }
        }
        
    }

}

