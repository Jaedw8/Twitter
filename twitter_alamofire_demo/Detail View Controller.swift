//
//  Detail View Controller.swift
//  twitter_alamofire_demo
//
//  Created by Jasmine Edwards on 3/11/18.
//  Copyright © 2018 Charles Hieger. All rights reserved.
//


import UIKit
import AlamofireImage


class DetailViewController: UIViewController {
    
    
    var tweet: Tweet!

    
    
    override func viewDidLoad()
{
        super.viewDidLoad()
    
//    if let tweet = tweet
//    {
//
//    tweetLabel.text = tweet.text
//
//    }
    
}
    
    @IBAction func didRT(_ sender: Any)
    {
        tweet.retweeted = true
        tweet.retweetCount += 1
        
        APIManager.shared.retweet(tweet) { (tweet: Tweet?, error: Error?) in
            if let  error = error {
                print("Error retweeting tweet: \(error.localizedDescription)")
            } else if let tweet = tweet {
                print("Successfully retweeted the following Tweet: \n\(tweet.text)")
            }
        }
        
        
    }
    
    
    
    @IBAction func didLike(_ sender: Any)
    {
        tweet.favorited = true
        tweet.favoriteCount += 1
        
        APIManager.shared.favorite(tweet) { (tweet: Tweet?, error: Error?) in
            if let  error = error {
                print("Error favoriting tweet: \(error.localizedDescription)")
            } else if let tweet = tweet {
                print("Successfully favorited the following Tweet: \n\(tweet.text)")
            }
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
        
        // Configure the view for the selected state
    }
    


