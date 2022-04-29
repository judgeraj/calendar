//
//  ViewController.swift
//  calendar
//
//  Created by Rajpreet Judge on 4/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOfMonth: UILabel!
    
    let monthArray = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"]
    var count = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCells()
        labelOfMonth.text = monthArray[count]
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var collectionView: UICollectionView!
    
    func setCells() {
        let width = (collectionView.frame.size.width)/7
        let height = (collectionView.frame.size.height)/7
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: height)
        
    }
    
    
    @IBAction func nextMonth(_ sender: Any) {
        print("before if" , String(count))
        if count >= 11 {
            count = 0
            labelOfMonth.text = monthArray[count]
        } else {
            count += 1
            labelOfMonth.text = monthArray[count]
        }
        
        print("after if", String(count))
    }
    
    @IBAction func prevMonth(_ sender: Any) {
        print("before if", String(count))
        if count <= 0 {
            count = 11
            labelOfMonth.text = monthArray[count]
        } else {
            count -= 1
            labelOfMonth.text = monthArray[count]
        }
        print("after if", String(count))
//        labelOfMonth.text = monthArray[count]
    }
}

