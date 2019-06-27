//
//  DetailViewController.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/25/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var character: CharacterViewModel?{
        didSet{
            refreshUI()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    override func viewDidLayoutSubviews() {
        descriptionTextView.centerVertically()
    }
    
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name: setupUI
     functionality:  to setup UI related changes
     */
    
    func setupUI(){
        titleLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        titleLabel.backgroundColor = Color.secondaryColor
        titleLabel.textColor = Color.primaryFontColor
        
        descriptionTextView.backgroundColor = Color.primaryColor
        descriptionTextView.textColor = UIColor.black
        descriptionTextView.isEditable = false
        descriptionTextView.textAlignment = .center
        
    }
    
   
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name: refreshUI
     functionality: to refresh the UI with details of character
     */
    func refreshUI() {
        loadViewIfNeeded()
        titleLabel.text = character?.name
        descriptionTextView.text = character?.description
        
        let imageUrl = String(character?.iconUrl ?? "NA")
       
        getImage(imageUrl: imageUrl)
        
        
    }
    
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name:
     functionality: to check if image url is empty or NA
     
     */
    func getImage(imageUrl: String){
        if((imageUrl != "") && (imageUrl != "NA" )){
            characterImage.load(url: URL(string: imageUrl)!)
        }else{
            characterImage.image = UIImage(named: "imageNA")
        }
    }
}
extension DetailViewController: CharacterSelectionDelegate {
    
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name:
     functionality: delegate method
     */
    func characterSelected(_ newCharacter: CharacterViewModel) {
        character = newCharacter
    }
    
}


extension UITextView {
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name: centerVertically
     functionality: to align text veritcally center in text view
     */
    func centerVertically() {
        let fittingSize = CGSize(width: bounds.width, height: CGFloat.greatestFiniteMagnitude)
        let size = sizeThatFits(fittingSize)
        let topOffset = (bounds.size.height - size.height * zoomScale) / 2
        let positiveTopOffset = max(1, topOffset)
        contentOffset.y = -positiveTopOffset
    }
    
}
extension UIImageView{
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name: load
     functionality: to load the images in backgorund and update in main queue
     
     */
    func load(url: URL){
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url){
                if let image = UIImage(data: data){
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
