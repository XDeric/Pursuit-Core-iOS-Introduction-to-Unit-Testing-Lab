//
//  Modeljson.swift
//  UnitTest_lab
//
//  Created by EricM on 8/29/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import Foundation

struct Joking: Codable{
    let setup: String
    let punchline: String
    
    static func getJoke(from data: Data) -> [Joking]{
        do{
            let fun = try JSONDecoder().decode([Joking].self, from: data)
            return fun
        } catch { fatalError("\(error)")}
    }
}

struct Star: Codable{
    let title: String
    let episode_id: Int
    
    static func getStar(from data: Data) -> [Star]{
        do{
            let fun = try JSONDecoder().decode([Star].self, from: data)
            return fun
        } catch { fatalError("\(error)")}
    }
}

struct Trivias: Codable{
    let category: String
    let type: String
    let difficulty: String
    let question: String
    let correct_answer: Bool
    let incorrect_answers: Bool
    
    static func getTrivia(from data: Data) -> [Trivias]{
        do{
            let fun = try JSONDecoder().decode([Trivias].self, from: data)
            return fun
        } catch { fatalError("\(error)")}
    }
}
