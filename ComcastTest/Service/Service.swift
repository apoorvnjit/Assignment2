//
//  Service.swift
//  ComcastTest
//
//  Created by Apoorva Reed(Personal) on 6/23/19.
//  Copyright © 2019 Apoorva Reed(Personal). All rights reserved.
//

import Foundation

class Service: NSObject{
   
    static let shared = Service()
    
    /*
     Author: Apoorva Reed
     created: 07/26/2019
     func name: fetchData
     functionality: to fetch json data into models
     
     */
    func fetchData(completion: @escaping (RootClass?, Error?) -> ()) {
        
        let appType = Bundle.main.object(forInfoDictionaryKey: "AppType") as? String
        var urlString: String
        if(appType == "Simpsons"){
            urlString = ComcastAppVersion.apiPath(.Simpsons)()
        }else{
            urlString = ComcastAppVersion.apiPath(.Wire)()
        }
  
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                completion(nil, err)
                print("Failed to fetch courses:", err)
                return
            }
            
            // check response
            
            guard let data = data else { return }
            do {
                let courses = try JSONDecoder().decode(RootClass.self, from: data)
                DispatchQueue.main.async {
                    completion(courses, nil)
                }
            } catch let jsonErr {
                print("Failed to decode:", jsonErr)
            }
            }.resume()
    }
    
    
    

}
