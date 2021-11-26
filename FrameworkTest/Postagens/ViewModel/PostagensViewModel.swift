//  PostagensViewModel.swift
//  FrameworkTest
//  Created by Juninho on 26/11/21.

import Foundation

class PostagensViewModel {
    
    var postagensViewModel: [PostagensModel]
    init() {
        self.postagensViewModel = [PostagensModel]()
    }
}

extension PostagensViewModel {
    func postagensViewModel(at index:Int) -> PostagensModel   {
        return self.postagensViewModel[index]
    }
}

struct PostModel {
    let post: PostagensModel
}

extension PostModel{
    var title: String{
        return self.post.title
    }
    var body: String{
        return self.post.body
    }
}
