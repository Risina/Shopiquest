//
//  SQItemViewController.swift
//  Shopiquest
//
//  Created by Risina Perera on 4/17/16.
//  Copyright © 2016 Risina Perera. All rights reserved.
//

import UIKit

class SQItemViewController: UIViewController {
    
    var product:SQProduct!
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var brandLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var descriptionTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        brandLabel.text = product.productVendor
        titleLabel.text = product.productName
        priceLabel.text = "\(SQAppSettings.currency)\(product.productPrice)"
        descriptionTextView.text = product.productDescription
    }
    
    override func viewWillAppear(animated: Bool) {
        imageView.hnk_setImageFromURL(NSURL(string: product.productImageUrl)!)
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
    
    @IBAction func closePressed(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func callStorePressed(sender: UIButton) {
    }

    @IBAction func buyOnlinePressed(sender: UIButton) {
        

    }
}
