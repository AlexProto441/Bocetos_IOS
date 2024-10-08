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
    
    var cita_actual:Cita
    
    required init?(coder: NSCoder) {
        self.cita_actual=Cita(quien_lo_dijo: "Desarrollador", que_dijo: "Tenemos un problema. Reportalo por una rebanada de pastel")
        super.init(coder: coder)
        print("Error: Se ha cargado el default de INIT")
    }
    
    init?(cita_para_citar:Cita, coder:NSCoder){
        self.cita_actual = cita_para_citar
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializar_pantalla()
    }
    
    func inicializar_pantalla(){
        NombreDeQuienLoDijo.text = cita_actual.nombre
        QueDijoMuroTexto.text = cita_actual.texto
    }
    
}
