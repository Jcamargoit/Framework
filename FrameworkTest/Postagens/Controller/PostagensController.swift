//  Postagens.swift
//  FrameworkTest
//  Created by Juninho on 25/11/21.

import UIKit

class PostagensController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var minhatabview: UITableView!
    
    var listPost = PostagensViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        setup()
    }
    
    func setup(){
        APIService().load(resource: PostagensModel.Get) { [weak self] result in
            switch result {
            case .success(let orders):
                self?.listPost.postagensViewModel = orders
                self?.minhatabview.reloadData()
            case .failure(let error):
                print("Error ", error)
            }
        }
    }
    
    /// Tamanho Cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    
    //quantidade de Setions (quantidade Categorias)
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    //Quantidade de celulas por categoria
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listPost.postagensViewModel.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.minhatabview.reloadData()
    }
    
    
    //Alimentar a celula
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:
                                                    indexPath) as! PostagensCelula
        let vm = self.listPost.postagensViewModel(at: indexPath.row)
        
        cell.titulo.text = vm.title
        cell.mensagem.text = vm.body
        
        return cell
    }
}
