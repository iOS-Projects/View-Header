//
//  ViewController.swift
//  Header View
//
//  Created by Amreth on 12/8/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import UIKit

struct postStruct {
    var image: UIImage!
    var name: String!
}

var heightOfHeader: CGFloat = 44

class TableViewController: UITableViewController {

    var arrayOfPost=[postStruct]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Using local image
        arrayOfPost = [postStruct.init(image: #imageLiteral(resourceName: "fZdbOe"), name: "Amreth"),postStruct.init(image: #imageLiteral(resourceName: "fZdbOe"), name: "Amreth"),postStruct.init(image: #imageLiteral(resourceName: "fZdbOe"), name: "Amreth"),postStruct.init(image: #imageLiteral(resourceName: "fZdbOe"), name: "Amreth")]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfPost.count
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return heightOfHeader
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let hv = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderViewTableViewCell
        hv.headerImageView.image = arrayOfPost[section].image
        hv.headerLabel.text = arrayOfPost[section].name
        return hv
    }

}

