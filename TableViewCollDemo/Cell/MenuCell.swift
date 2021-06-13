//
//  MenuCell.swift
//  TableViewCollDemo
//
//  Created by MacBookAir on 13/06/21.
//

import UIKit

class MenuCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collMenuName: UICollectionView!
    var intColl = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       // registerCell()
        self.collMenuName.delegate = self
        self.collMenuName.dataSource = self
        collMenuName.reloadData()
    }
    func reloadCollectionView(_ intColl:Int) -> Void {
        self.intColl = intColl
        self.collMenuName.reloadData()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func registerCell() {
        collMenuName.register(MenuNameCell.self, forCellWithReuseIdentifier: "MenuNameCell")
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{

            return CGSize(width: 100, height: 50)
        }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return intColl
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuNameCell", for: indexPath) as! MenuNameCell
        
        cell.name.text! = "Chicken"
        return cell
    }

}
