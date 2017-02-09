//
//  PhotoDetailViewController.swift
//  TumblrView
//
//  Created by Robert Mitchell on 2/8/17.
//  Copyright © 2017 Robert Mitchell. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet var photoImage: UIImageView!
    var post: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print(post)
        if let photos = post.value(forKeyPath: "photos") as? [NSDictionary]{
            print(photos)
            let urlString = photos[0].value(forKeyPath: "original_size.url") as? String
            let url = URL(string: urlString!)
            photoImage.setImageWith(url!)
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
