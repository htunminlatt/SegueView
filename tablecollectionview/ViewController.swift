//
//  ViewController.swift
//  tablecollectionview
//
//  Created by ALAY on 10/1/18.
//  Copyright © 2018 ALAY. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var myarray = ["1","1","1","1","1","1","1","1",]
    
    //for collectionview
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myarray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "insideCollectionViewCell", for: indexPath)as! insideCollectionViewCell
        
        cell.labelname.text = myarray[indexPath.row]
        
        return cell
    }
    
    
    //for tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath)as! myTableViewCell
        
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("Hello")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

