//
//  HomeViewController.swift
//  Mobile Info
//
//  Created by Yasin Shamrat on 12/26/19.
//  Copyright © 2019 Yasin Shamrat. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var latestReleaseCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        latestReleaseCollectionView.dataSource = self
        latestReleaseCollectionView.delegate = self
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.topItem?.title = "Home"
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "latestReleaseCell", for: indexPath) as! LatestReleaseCollectionViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 5
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostsCell") as! PostsTableViewCell
        
        return cell
       }
}
