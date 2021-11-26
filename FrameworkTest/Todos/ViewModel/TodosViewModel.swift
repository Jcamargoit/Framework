//
//  PostagensViewModel.swift
//  FrameworkTest
//
//  Created by Juninho on 26/11/21.
//

import Foundation

class TodosViewModel {
    
    var TodosViewModel: [ImagemUrl]
    init() {
        self.TodosViewModel = [ImagemUrl]()
    }
}

extension TodosViewModel {
    func TodosViewModel(at index:Int) -> ImagemUrl   {
        return self.TodosViewModel[index]
    }
}

struct UrlViewModel {
    let url: ImagemUrl
}

extension UrlViewModel{
    var link: String{
        return self.url.link
    }
}
