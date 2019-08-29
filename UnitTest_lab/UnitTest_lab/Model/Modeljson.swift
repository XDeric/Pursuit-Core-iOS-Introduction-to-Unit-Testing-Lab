//
//  Modeljson.swift
//  UnitTest_lab
//
//  Created by EricM on 8/29/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import Foundation

struct Joking: Codable{
    let name: String
    
    static func getWeather(from data: Data) throws -> Joking{
        do{
            let fun = try JSONDecoder().decode(Joking.self, from: data)
            return fun
        } catch { fatalError("\(error)")}
    }
}

struct Star: Codable{
    let name: String
    
    static func getWeather(from data: Data) throws -> Star{
        do{
            let fun = try JSONDecoder().decode(Star.self, from: data)
            return fun
        } catch { fatalError("\(error)")}
    }
}

struct Trivias: Codable{
    let name: String
    
    static func getWeather(from data: Data) throws -> Trivias{
        do{
            let fun = try JSONDecoder().decode(Trivias.self, from: data)
            return fun
        } catch { fatalError("\(error)")}
    }
}
