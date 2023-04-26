//
//  ViewController.swift
//  collectionViewCore
//
//  Created by Mohan K on 20/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var teamCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        teamCollectionView.reloadData()
    }
    func setup() {
        teamCollectionView.delegate = self
        teamCollectionView.dataSource = self
        DispatchQueue.main.async {
            self.teamCollectionView.reloadData()
        }
    }

    
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let team = teams {
            return team.count
        }
        else
        {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = teamCollectionView.dequeueReusableCell(withReuseIdentifier: "teamCollectionViewCell", for: indexPath) as! teamCollectionViewCell
        if let team = teams {
            cell.connectLabel?.text = team[indexPath.item]
          
        }
        teamCollectionView.reloadData()
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 150)
    }
    
}
