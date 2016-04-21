//
//  SQMainCollectionViewController.swift
//  Shopiquest
//
//  Created by Risina Perera on 4/16/16.
//  Copyright © 2016 Risina Perera. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class SQMainCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var products:[SQProduct] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product:SQProduct = SQProduct()
        product.productId = 1
        product.productName = "Dummy Name"
        product.productVendor = "Dummy Vendor"
        product.productPrice = 50.00
        product.productDescription = "Dummy description Dummy description Dummy description Dummy description Dummy description"
        product.productImageUrl = "http://dummyimage.com/300x300/360/fff"
        
        products.append(product)
        
        
        let product2:SQProduct = SQProduct()
        product2.productId = 2
        product2.productName = "Dummy Name"
        product2.productVendor = "Dummy Vendor"
        product2.productPrice = 50.00
        product2.productDescription = "Dummy description Dummy description Dummy description Dummy description Dummy description"
        product2.productImageUrl = "http://dummyimage.com/300x300/330/fff"
        
        products.append(product2)
        
        
        let product3:SQProduct = SQProduct()
        product3.productId = 2
        product3.productName = "Dummy Name"
        product3.productVendor = "Dummy Vendor"
        product3.productPrice = 50.00
        product3.productDescription = "Dummy description Dummy description Dummy description Dummy description Dummy description"
        product3.productImageUrl = "http://dummyimage.com/300x300/310/fff"
        products.append(product3)
        
        for _ in 1...10 {
            
            products.append(product2)
            products.append(product3)
            products.append(product)
        }
        
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
       // self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return products.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:SQMainCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! SQMainCollectionViewCell
        
        cell.setProductDetails(products[indexPath.row])
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let width:CGFloat = collectionView.frame.width/2 - 15
        return CGSize(width: width, height: (width * 1.6))
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let width:CGFloat = collectionView.frame.width/2 - 15
        return CGSize(width: width, height: (width * 1.3))
    }
    
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        var reusableview:UICollectionReusableView? = nil;
        
        if (kind == UICollectionElementKindSectionHeader) {
            let headerView:UICollectionReusableView = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "HeaderView", forIndexPath: indexPath)
            
            let sqHeaderView:SQHeaderCollectionReusableView = headerView as! SQHeaderCollectionReusableView
            
            sqHeaderView.headerImage.image = UIImage(named:"headerDummy.jpg");
            sqHeaderView.headerImage.frame = CGRect(x:0, y:0, width: headerView.frame.width, height: headerView.frame.height)
            reusableview = sqHeaderView
        }
        
        return reusableview!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.destinationViewController.isKindOfClass(SQItemViewController))
        {
            let viewController:SQItemViewController = segue.destinationViewController as! SQItemViewController
            let cell = sender as! SQMainCollectionViewCell
            viewController.product = cell.product
            viewController.title = cell.product?.productName
        }
    }
}
