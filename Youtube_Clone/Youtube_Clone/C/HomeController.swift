//
//  ViewController.swift
//  Youtube_Clone
//
//  Created by Killva on 7/8/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import UIKit


class HomeController: UICollectionViewController  {

    let menuBar : UIMenuBarView = {
        let mb = UIMenuBarView()
        return mb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.collectionView?.backgroundColor = .white
       
        setupNavigationLabel(title: "Home", color: .white,fontSize: 16)
        self.navigationController?.navigationBar.isTranslucent = false
        self.collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellid")
        
        menuBar.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        self.view.addSubview(menuBar)
        self.collectionView.frame = CGRect(x: 0, y: 50, width: view.frame.width, height: self.collectionView.frame.height)
    }

   


}







extension HomeController  :  UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
        //        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = ((self.view.frame.width - 16) * 9/16 ) + 63
        return CGSize(width: self.view.frame.width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}
