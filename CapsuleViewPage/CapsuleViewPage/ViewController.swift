//
//  ViewController.swift
//  CapsuleViewPage
//
//  Created by Julie on 11/22/15.
//  Copyright © 2015 Julie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
	
	let sectionInsets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
	let titles = ["minion1","minion2","minion3","minion4","minion5"]
	let images = [UIImage(named: "minion1"), UIImage(named: "minion2"), UIImage(named: "minion3"), UIImage(named: "minion4"),UIImage(named: "minion5")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
		//#warning Incomplete method implementation -- Return the number of sections
		return 1
	}
	
	
	
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		//#warning Incomplete method implementation -- Return the number of items in the section
		return titles.count
	}
	
	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
	{
		
		let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
		
		cell.imageView?.image = self.images[indexPath.row]
		
		cell.Title?.text = self.titles[indexPath.row]
		
		return cell
		
	}
	
	func collectionView(collectionView: UICollectionView!,
		layout collectionViewLayout: UICollectionViewLayout!,
		sizeForItemAtIndexPath indexPath: NSIndexPath!) -> CGSize {
			return CGSize(width: 250, height: 300)
	}
	
	func collectionView(collectionView: UICollectionView!,
		layout collectionViewLayout: UICollectionViewLayout!,
		insetForSectionAtIndex section: Int) -> UIEdgeInsets {
			return sectionInsets
	}
	
	func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
	{
		self.performSegueWithIdentifier("showImage", sender: self)
	}
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
	{
		if segue.identifier == "showImage"
		{
			let indexPaths = self.collectionView!.indexPathsForSelectedItems()!
			let indexPath = indexPaths[0] as NSIndexPath
			let vc = segue.destinationViewController as! NewViewController
			vc.image = self.imageArray[indexPath.row]!
			vc.title = self.appleProducts[indexPath.row]
		}
	}
	

	
}
