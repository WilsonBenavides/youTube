//
//  TrendingCell.swift
//  youTube
//
//  Created by willix on 11/05/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {
    
    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
}
