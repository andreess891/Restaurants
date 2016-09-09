//
//  DetailViewController.swift
//  Restaurants
//
//  Created by Jonatan Londoño Taborda on 3/09/16.
//  Copyright © 2016 JaLt. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var telephoneLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var rankingLabel: UILabel!
    @IBOutlet weak var restaurantImage: UIImageView!
    
    var restaurant:Restaurant = Restaurant(name: "Desayunos", details: "asd asd asd asd as dadssad aa dsa asd asda sd aasdsada asdasdas asd asda asdasd asd asd asd aasd as asd sa", address: "CL 12 33 N 12 12", latitude: 6.654643, longitude: -75.564533, category: "Tipico", image: "breakfast-restaurant")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = self.restaurant.name
        self.detailTextView.text = self.restaurant.details
        self.addressLabel.text = self.restaurant.address
        self.telephoneLabel.text = self.restaurant.telephone
        self.categoryLabel.text = self.restaurant.category
        self.rankingLabel.text = String(self.restaurant.ranking)
        self.restaurantImage.image = UIImage(named: self.restaurant.image)
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
