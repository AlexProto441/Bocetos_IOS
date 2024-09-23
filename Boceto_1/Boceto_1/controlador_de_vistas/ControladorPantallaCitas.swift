//
//  ControladorPantallaCitas.swift
//  Boceto_1
//
//  Created by alumno on 9/23/24.
//

import UIKit

class ControladorPantallaCitas: UIViewController{
    
    @IBOutlet weak var NombreDeQuienLoDijo: UILabel!
    @IBOutlet weak var QueDijoMuroTexto: UILabel!
    
    var MuroDeTexto:String
    var QuienLoDijo:String
    
    required init?(coder: NSCoder) {
        self.MuroDeTexto = ""
        self.QuienLoDijo = ""
        super.init(coder: coder)
        print("Error: Se ha cargado el default de INIT")
    }
    
    init?(muro_texto:String, de_quien:String, coder:NSCoder){
        self.MuroDeTexto = muro_texto
        self.QuienLoDijo = de_quien
        
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializar_pantalla()
    }
    
    func inicializar_pantalla(){
        NombreDeQuienLoDijo.text = self.QuienLoDijo
        QueDijoMuroTexto.text = self.MuroDeTexto
    }
    
}
