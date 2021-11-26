//  PostagensModel.swift
//  FrameworkTest
//  Created by Juninho on 25/11/21.

import Foundation

struct PostagensModel: Codable {
    let title: String
    let body: String
}

extension PostagensModel {
    // Resgatar Api Json com forma de OBJ
    static var Get:  Resource<[PostagensModel]> = {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else{
            fatalError("URL is incorrect!")
        }
        return Resource<[PostagensModel]>(url: url)
    }()
}

