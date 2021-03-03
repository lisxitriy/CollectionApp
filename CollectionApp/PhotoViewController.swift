//
//  PhotoViewController.swift
//  CollectionApp
//
//  Created by Оля Трофимова on 29.12.2020.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    
    @IBOutlet weak var detailImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.darkGray
        detailImage.image = image
    
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print ("Успешно")
            }
        }
        
        present(shareController, animated: true, completion: nil)
        
    }
    
   

}
