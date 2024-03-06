//
//  CartItem.swift
//  CartCollab
//
//  Created by Prashant Rana on 3/5/24.
//

import Foundation

class CartItem: ObservableObject {
    let id: String
    @Published var name: String = ""
    @Published var type: String = ""
    @Published var imageId: String = ""
    
    required init?(id: String, data: [String: Any]) {
        let name = data["name"] as? String != nil ? data["name"] as! String : ""
        let type = data["type"] as? String != nil ? data["type"] as! String : ""
        let imageId = data["imageId"] as? String != nil ? data["imageId"] as! String : ""
        
        self.id = id
        self.name = name
        self.type = type
        self.imageId = imageId
    }
}
