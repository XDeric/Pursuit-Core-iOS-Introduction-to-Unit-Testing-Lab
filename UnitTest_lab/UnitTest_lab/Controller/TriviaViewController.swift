//
//  TriviaViewController.swift
//  UnitTest_lab
//
//  Created by EricM on 8/29/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var triviaTableViewOutlet: UITableView!
    var trivia = [Trivias]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trivia.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = triviaTableViewOutlet.dequeueReusableCell(withIdentifier: "triviaCell", for: indexPath)
        cell.textLabel?.text = trivia[indexPath.row].category
        cell.detailTextLabel?.text = "Difficulty: \(trivia[indexPath.row].difficulty) Type: \(trivia[indexPath.row].type)"
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        triviaTableViewOutlet.dataSource = self
        //loadData()
        // Do any additional setup after loading the view.
    }
    
    private func loadData() -> Data{
        // just the string for the name of the file
        guard let pathToJSONFile =
            Bundle.main.path(forResource: "Trivia", ofType: "json") else {fatalError("couldn't Find json file")}
        print(pathToJSONFile)
        // is a reference to the ctual location of the json file
        let url = URL(fileURLWithPath: pathToJSONFile)
        
        do{
            let data = try Data(contentsOf: url)
            return data
            //trivia = try Trivias.getTrivia(from: data)
            // if either try fails the catch will catch both of them
        } catch{
            fatalError("couldn't get weather from JSON")
        }
        //whatever we decode from the json file
    }

}
