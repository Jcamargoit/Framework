////
////  PostagensModel.swift
////  FrameworkTest
////
////  Created by Juninho on 25/11/21.
//
//
//import Foundation
//
//
//struct AlbunsModel: Codable {
//    var data = [ImagemUrl]()
//}
//
//struct ImagemUrl: Codable {
//    let link: String
//}
//
//extension AlbunsModel {
//    // Resgatar Api Json com forma de OBJ
//    static var Get:  Resource<AlbunsModel> = {
//        guard let url = URL(string: "https://api.imgur.com/3/album/Cfy6A/images") else{
//            fatalError("URL is incorrect!")
//        }
//        return Resource<AlbunsModel>(url: url)
//    }()
//}
//
