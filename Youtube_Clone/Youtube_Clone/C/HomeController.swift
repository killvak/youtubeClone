//
//  ViewController.swift
//  Youtube_Clone
//
//  Created by Killva on 7/8/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import UIKit


extension UIViewController {
    
    func setupNavigationLabel(title : String, color : UIColor, fontSize : CGFloat)  {
        let lbl =  UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 12, height: view.frame.height))
        lbl.text = title
        lbl.textColor = color
        lbl.font = UIFont.systemFont(ofSize: fontSize)
        navigationItem.titleView = lbl
        
    }
}
class HomeController: UICollectionViewController , UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.collectionView?.backgroundColor = .white
       
        setupNavigationLabel(title: "Home", color: .white,fontSize: 16)
        self.navigationController?.navigationBar.isTranslucent = false
        self.collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellid")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


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







