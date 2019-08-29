//
//  StarWarViewController.swift
//  UnitTest_lab
//
//  Created by EricM on 8/29/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import UIKit
var starwars = [Star]()
class StarWarViewController: UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var starTableViewOutlet: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return starwars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = starTableViewOutlet.dequeueReusableCell(withIdentifier: "starwarCell", for: indexPath)
        cell.textLabel?.text = starwars[indexPath.row].title
        cell.detailTextLabel?.text = "Episode: \(starwars[indexPath.row].episode_id)"
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        starTableViewOutlet.dataSource = self
        //loadData()

        // Do any additional setup after loading the view.
    }
    
    private func loadData() -> Data{
        // just the string for the name of the file
        guard let pathToJSONFile =
            Bundle.main.path(forResource: "StarWar", ofType: "json") else {fatalError("couldn't Find json file")}
        print(pathToJSONFile)
        // is a reference to the ctual location of the json file
        let url = URL(fileURLWithPath: pathToJSONFile)
        
        do{
            let data = try Data(contentsOf: url)
            return data
            //starwars = try Star.getStar(from: data)
            // if either try fails the catch will catch both of them
        } catch{
            fatalError("couldn't get weather from JSON")
        }
        //whatever we decode from the json file
    }

}
