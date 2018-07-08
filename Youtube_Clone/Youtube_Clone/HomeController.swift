//
//  ViewController.swift
//  Youtube_Clone
//
//  Created by Killva on 7/8/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController , UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.collectionView?.backgroundColor = .white
        
        self.collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "cellid")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
//        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 200)
    }

    
}
// 15:48
class VideoCell : UICollectionViewCell {
    
    let videoImgV : UIImageView = {
       let imV = UIImageView()
        imV.backgroundColor = .red
        return imV
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    
    
    func setupViews() {
        self.backgroundColor = .purple
        
        self.videoImgV.frame = self.frame
        self.addSubview(videoImgV)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init coder has been implemented")
    }
    
}













