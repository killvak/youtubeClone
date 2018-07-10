//
//  VideoCell.swift
//  Youtube_Clone
//
//  Created by admin on 7/9/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import Foundation
import UIKit
// 15:48
class VideoCell : UICollectionViewCell {
    
    let videoImgV : UIImageView = {
        let imV = UIImageView()
        imV.translatesAutoresizingMaskIntoConstraints = false
        imV.backgroundColor = .red
        imV.image = UIImage(named: "logo-1")
        imV.contentMode = .scaleAspectFill
        imV.clipsToBounds = true
        imV.backgroundColor = .lightGray
        return imV
    }()
    let profileImgV : UIImageView = {
        let imV = UIImageView()
        imV.translatesAutoresizingMaskIntoConstraints = false
        imV.backgroundColor = .purple
        imV.image = UIImage(named: "logo")
        imV.contentMode = .scaleAspectFill
        imV.clipsToBounds = true
        imV.layer.cornerRadius = 17.5
        imV.layer.masksToBounds = true
        imV.backgroundColor = .lightGray
        return imV
    }()
    let seprator : UIView = {
        
        let v = UIView()
        v.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    func configCell(video : Video) {
        titleLbl.text = video.title
        if let title =  video.title  {
            let size = CGSize(width: frame.width - 190, height: 1000)
            let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
            let estimatedRect = NSString(string: title).boundingRect(with: size, options: options, attributes: [kCTFontAttributeName as NSAttributedString.Key:UIFont.systemFont(ofSize: 14)], context: nil)
            if estimatedRect.size.height > 18 {
                titleLblHeight?.constant =  40 //estimatedRect.size.height
            }else {
                titleLblHeight?.constant = 18
            }
        }
        
    }
    var titleLblHeight: NSLayoutConstraint?
    
    let titleLbl : UILabel = {
        
        let lbl = UILabel()
        lbl.backgroundColor = .yellow
        lbl.text = "Creative Mind Channel"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 2
        lbl.minimumScaleFactor = 0.8
        lbl.adjustsFontSizeToFitWidth = true
        return lbl
    }()
    let aboutLbl : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.text = " All you need to know that we have 1,000,000 Viewer"
        lbl.font = UIFont.systemFont(ofSize: 11)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 2
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        self.clipsToBounds = false
    }
    
    
    
    func setupViews() {
        //        self.backgroundColor = .purple
        
        //        self.videoImgV.frame = self.frame
        //        self.videoImgV.backgroundColor = .red
        setupImgV()
    }
    
    private func setupImgV() {
        self.addSubview(videoImgV)
        videoImgV.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
//        videoImgV.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -55).isActive = true
        videoImgV.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        videoImgV.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        let height = ( self.frame.height  * 9/16 ) + 35
        videoImgV.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        self.addSubview(profileImgV)
        profileImgV.topAnchor.constraint(equalTo: videoImgV.bottomAnchor, constant: 3).isActive = true
        profileImgV.leadingAnchor.constraint(equalTo: videoImgV.leadingAnchor, constant: 0).isActive = true
        //        profileImgV.trailingAnchor.constraint(equalTo: videoImgV.trailingAnchor, constant: 15).isActive = true
        profileImgV.heightAnchor.constraint(equalToConstant: 35).isActive = true
        profileImgV.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        self.addSubview(titleLbl)
        titleLbl.topAnchor.constraint(equalTo: videoImgV.bottomAnchor, constant: 3).isActive = true
        titleLbl.leadingAnchor.constraint(equalTo: profileImgV.trailingAnchor, constant: 8).isActive = true
        titleLbl.trailingAnchor.constraint(equalTo: videoImgV.trailingAnchor, constant: -15).isActive = true
        titleLblHeight = titleLbl.heightAnchor.constraint(equalToConstant: 18)
        titleLblHeight?.isActive = true
        
        self.addSubview(seprator)
        seprator.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 3).isActive = true
        seprator.leadingAnchor.constraint(equalTo: videoImgV.leadingAnchor, constant: -15).isActive = true
        seprator.trailingAnchor.constraint(equalTo: videoImgV.trailingAnchor, constant: 15).isActive = true
        seprator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        self.addSubview(aboutLbl)
        aboutLbl.topAnchor.constraint(equalTo: titleLbl.bottomAnchor, constant: 3).isActive = true
        aboutLbl.leadingAnchor.constraint(equalTo: profileImgV.trailingAnchor, constant: 8).isActive = true
        aboutLbl.trailingAnchor.constraint(equalTo: videoImgV.trailingAnchor, constant: -15).isActive = true
                aboutLbl.heightAnchor.constraint(equalToConstant: 18).isActive = true
//        aboutLbl.bottomAnchor.constraint(equalTo: seprator.topAnchor, constant: -5).isActive = true
        
        
        
        
        
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init coder has been implemented")
    }
    
}





