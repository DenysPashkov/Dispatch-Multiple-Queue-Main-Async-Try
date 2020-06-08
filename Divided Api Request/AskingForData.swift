//
//  AskingForData.swift
//  Divided Api Request
//
//  Created by denys on 10/01/2020.
//  Copyright © 2020 denys. All rights reserved.
//

import Foundation
import UIKit

func apiRequest (strin : String ,completion:  @escaping (Json4Swift_Base) -> ()){
	
//	Write URL here
    let url = URL(string: "https://api.airtable.com/v0/appVSho7Wr9zX8xv9/Secret%20Santa?view=Grid%20view&fields%5B%5D=Name&api_key=keyvSDG29X6BEJH0B")

//asking for data
    let dataTask = URLSession.shared.dataTask(with: url!)  { data,_,_ in
//		Check if data are aviable
        guard let jsonData = data else {
            print("no data aviable")
            return
        }
//        Retrive with completion in this case (it was a need of some students )
        do{
            let decoder = JSONDecoder()
            let response = try decoder.decode(Json4Swift_Base.self, from: jsonData)
            completion(response)
        } catch{
//			if you see this it mean your struct is wrong
            print("wrong data struct")
            
        }
        
    }
    dataTask.resume()
}
