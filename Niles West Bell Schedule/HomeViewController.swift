//
//  HomeViewController.swift
//  Niles West Bell Schedule
//
//  Created by Alush Benitez on 5/8/19.
//  Copyright © 2019 Alush Benitez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var scheduleTypeLabel: UILabel!
    @IBOutlet weak var addReminderButton: UIButton!
    @IBOutlet weak var quickViewButton: UIButton!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MainCollectionViewCell
        cell.layer.cornerRadius = 15
        print(indexPath.row)
        cell.periodNumberView.layer.cornerRadius = 30
        cell.periodInfoView.layer.cornerRadius = 15
        if indexPath.row == 0 {
            cell.periodInfoView.backgroundColor = red
            cell.periodNumberView.backgroundColor = red
            
        } else if indexPath.row == 1 {
            cell.periodInfoView.backgroundColor = blue
            cell.periodNumberView.backgroundColor = blue
        } else if indexPath.row == 2 {
            cell.periodInfoView.backgroundColor = green
            cell.periodNumberView.backgroundColor = green
        } else if indexPath.row == 3 {
            cell.periodInfoView.backgroundColor = yellow
            cell.periodNumberView.backgroundColor = yellow
        } else if indexPath.row == 4 {
            cell.periodInfoView.backgroundColor = orange
            cell.periodNumberView.backgroundColor = orange
        } else if indexPath.row == 5 {
            cell.periodInfoView.backgroundColor = purple
            cell.periodNumberView.backgroundColor = purple
        } else if indexPath.row == 6 {
            cell.periodInfoView.backgroundColor = brown
            cell.periodNumberView.backgroundColor = brown
        } else if indexPath.row == 7 {
            cell.periodInfoView.backgroundColor = pink
            cell.periodNumberView.backgroundColor = pink
        } else {
            cell.periodInfoView.backgroundColor = black
            cell.periodNumberView.backgroundColor = black
        }

        
        
        
        return cell
    }

}
