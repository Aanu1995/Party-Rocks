//
//  ContentViewCell.swift
//  Party-Rock
//
//  Created by user on 17/02/2021.
//

import UIKit

class ContentViewCell: UITableViewCell {
    
    static let identifier = "partyRockViewCell"

    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(data: PartyRockModel){
        let url = URL(string: data.imageURL)!
        
        DispatchQueue.global(qos: .userInitiated).async {
            do{
                let imageData = try Data(contentsOf: url)
                DispatchQueue.main.async {
                    self.contentImage.image = UIImage(data: imageData)
                }
                
            }catch{
                print(error.localizedDescription)
            }
        }
       
        self.contentLabel.text = data.title
        
    }

}
