//
//  MenuBarView.swift
//  Youtube_Clone
//
//  Created by admin on 7/9/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import Foundation
import UIKit

class UIMenuBarView : UIView {
    
    lazy var  collectionView : UICollectionView = {
        let f = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: f )
        cv.backgroundColor =  UIColor.youtubeRed
        cv.delegate = self
        cv.dataSource = self
        return cv 
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //        self.backgroundColor = .yellow
        
        self.collectionView.frame = self.frame //CGRect(x: 0, y: 0, width: 300, height: 300)
        collectionView.register(menuCell.self, forCellWithReuseIdentifier: "cellID")
        self.addSubview(collectionView)
        //        self.collectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        //        self.collectionView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        //        self.collectionView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        //        self.collectionView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        let firstIndex = IndexPath(row: 0, section: 0)
        collectionView.selectItem(at: firstIndex, animated: false, scrollPosition: .right)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.collectionView.frame = self.frame //CGRect(x: 0, y: 0, width: 300, height: 300)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    
    
}

extension UIMenuBarView : UICollectionViewDelegate , UICollectionViewDataSource  , UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! menuCell
        cell.backgroundColor = .clear
        cell.imgV.image = UIImage(named:"\(indexPath.row)")?.withRenderingMode(.alwaysTemplate)
        cell.tintColor =  UIColor.semiDarkYoutubeRed
        //        cell.underLineV.backgroundColor = indexPath.row == 0 ? .white : UIColor.semiDarkYoutubeRed
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width / 4, height: self.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}


class menuCell : superCollectionVCell {
    
    let imgV : UIImageView = {
        let im = UIImageView()
        im.translatesAutoresizingMaskIntoConstraints = false
        im.contentMode = .scaleAspectFit
        return im
    }()
    
    override var isHighlighted: Bool {
        didSet {
            setSelectedCell(selected: isHighlighted)
            
        }
    }
    override var isSelected: Bool {
        didSet {
            setSelectedCell(selected: isSelected)
        }
    }
    
    func setSelectedCell(selected : Bool) {
        imgV.tintColor = selected ? .white : UIColor.semiDarkYoutubeRed
        underLineV.backgroundColor = selected ? .white : UIColor.darkYoutubeRed
        
    }
    
    let underLineV : UIView = {
        let im = UIView()
        im.translatesAutoresizingMaskIntoConstraints = false
        im.backgroundColor = UIColor.darkYoutubeRed
        return im
    }()
    
    
    override func setupViews() {
        
        self.addSubview(imgV)
        self.imgV.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
        self.imgV.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
        self.imgV.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        self.imgV.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        
        self.addSubview(underLineV)
        self.underLineV.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        self.underLineV.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        self.underLineV.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        self.underLineV.heightAnchor.constraint(equalToConstant: 3).isActive = true
    }
    
    
    
}
