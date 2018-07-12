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
    var videos : [Video] = [Video(title: "Some Crazy Shit Gotta Happen Here Dude so Suit up and a]sdla kldk;as lkda;lklkldflkfd kldfkl sklfds klsdfkl kl")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.collectionView?.backgroundColor = .white
       
        setupNavigationLabel(title: "Home", color: .white,fontSize: 16)
        self.navigationController?.navigationBar.isTranslucent = false
        self.collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellid")
        
        menuBar.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        self.view.addSubview(menuBar)
//        self.collectionView.frame = CGRect(x: 0, y: 50, width: view.frame.width, height: self.collectionView.frame.height)
        self.collectionView?.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        self.collectionView?.scrollIndicatorInsets = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        
        fetchVideos()
    }

    func fetchVideos() {
        
        DataModelRequests().getData(success: { dataa in
        
            self.videos = dataa
            self.collectionView?.reloadData()
        }) {
            
            
        }
        
    }


}







extension HomeController  :  UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath) as! VideoCell
        //        cell.backgroundColor = .red
        cell.configCell(video: videos[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = ((self.view.frame.width - 16) * 9/16 ) + 89
        return CGSize(width: self.view.frame.width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}
