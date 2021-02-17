//
//  ViewController.swift
//  Party-Rock
//
//  Created by user on 17/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRockModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoUrl = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SjmTFIHX1yo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>";
        
        let imageUrl = "https://ca-times.brightspotcdn.com/dims4/default/adc57a8/2147483647/strip/true/crop/2048x1440+0+0/resize/840x591!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F51%2Fa5%2F2b9cf814bf79db68c9ad326bbddd%2Fla-et-ms-lmfao-genius-red-foo-addresses-backla-001"
        
        
        partyRocks.append(PartyRockModel(imageURL: imageUrl, videoURL: videoUrl, title: "Where the son goes down"))
        partyRocks.append(PartyRockModel(imageURL: imageUrl, videoURL: videoUrl, title: "Light Out"))
        partyRocks.append(PartyRockModel(imageURL: imageUrl, videoURL: videoUrl, title: "Let's get Ridiculous"))
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ContentViewCell.identifier, for: indexPath) as! ContentViewCell
        
        let data = partyRocks[indexPath.row]
        cell.configure(data: data)
        
        return cell
    }
    
    
}

