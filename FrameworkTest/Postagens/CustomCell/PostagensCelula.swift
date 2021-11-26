//  CelulaDados.swift
//  DigDu
//  Created by Juninho on 21/06/21.

import UIKit

class PostagensCelula: UITableViewCell {
    
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var mensagem: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        

        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
