//
//  SubscriptionCell.swift
//  youTube
//
//  Created by willix on 11/05/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {
    
    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
}
