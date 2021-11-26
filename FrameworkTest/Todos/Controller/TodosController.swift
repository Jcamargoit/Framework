//  Todos.swift
//  FrameworkTest
//  Created by Juninho on 26/11/21.


import UIKit

class TodosController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var minhatabview: UITableView!
    
    var titulo = [String]()
    
    var complete = [String]()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        titulo.append("Meus Dados")
        titulo.append("Histórico Pedidos")
        titulo.append("Facebook")
        titulo.append("Avaliar Aplicativo")
        titulo.append("Contar a um Amigo")
        titulo.append("Desenvolvedores")
        titulo.append("Termos e Condições")
        titulo.append("Sair")
        
        
        complete.append("iconMeusDados")
        complete.append("iconHistoricoPedidos")
        complete.append("iconFacebook")
        complete.append("iconAvaliarApp")
        complete.append("iconCompartilhar")
        complete.append("iconDev")
        complete.append("iconTermos")
        complete.append("iconSair")
        
    }
    
    
    
    /// Tamanhop table vcelula
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 72
        
    }
    
    
    //quantidade de Setions (quantidade Categorias)
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    //Quantidade de celulas por categoria
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return titulo.count
        
    }
    
    
    //Evento de clique ( quando clica jna celula)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //POSIÇÃO DA CELULA
        if indexPath.row == 0 {
            
        }
        
        if indexPath.row == 1 {
            
            
        }
        
        
        if indexPath.row == 2 {
            
            
        }
        
        if indexPath.row == 3 {
            
            
        }
        
        
        if indexPath.row == 4 {
            
            
        }
        
        if indexPath.row == 5 {
            
            
        }
        
        
        if indexPath.row == 6 {
            
            
        }
        
        if indexPath.row == 7 {
            
        }
        
        self.minhatabview.reloadData()
    }
    
    
    //Alimentar a celula com id
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:
                                                    indexPath) as! TodosCelula
        
        
        //  cell.imagem_celula
        cell.titulo.text = titulo[indexPath.row]
        cell.complete.text = complete[indexPath.row]
   
        
        return cell
    }
}

