//
//  SQBuyOnlineViewController.swift
//  Shopiquest
//
//  Created by Risina Perera on 4/19/16.
//  Copyright © 2016 Risina Perera. All rights reserved.
//

import UIKit
import Stripe

class SQBuyOnlineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func handlePaymentAuthorizationWithPayment(payment: PKPayment, completion: PKPaymentAuthorizationStatus -> ()) {
//        STPAPIClient.sharedClient().createTokenWithPayment(payment) { (token, error) -> Void in
//            if error != nil {
//                completion(PKPaymentAuthorizationStatus.Failure)
//                return
//            }
        
            
            
            /*
             We'll implement this below in "Sending the token to your server".
             Notice that we're passing the completion block through.
             See the above comment in didAuthorizePayment to learn why.
             */
            
            
//            card.
            
//            createBackendChargeWithToken(token, completion: completion)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


