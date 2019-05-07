//
//  NewViewController.swift
//  CapsuleViewPage
//
//  Created by Julie on 11/22/15.
//  Copyright © 2015 Julie. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {


	@IBOutlet weak var largeImage: UIImageView!
	
	var image = UIImage()
	
	@IBOutlet weak var Headtitle: UILabel!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		self.largeImage.image = self.image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
