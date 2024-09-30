//
//  ControladorGeneradorCita.swift
//  Boceto_1
//
//  Created by alumno on 9/27/24.
//

import UIKit

class ControladorGeneradorCita: UIViewController{
    var quien_lo_dice:String = ""
    var que_dice:String = ""
    
    required init?(coder: NSCoder) {
            super.init(coder: coder)
        }
        
        init ?(pantalla_anterior: ViewController, coder:NSCoder){
            self.opantalla_anterior = pantalla_anterior
            super.init(coder: coder)
        }
    
    var cita_creada: Cita? = nil
    
    @IBOutlet weak var quien_lo_dijo_view:UITextView!
    
    @IBOutlet weak var que_es_lo_que_dijo:UITextView!
    
    @IBAction func agregar_cita_nueva(_ sender: UIButton) {
        if let quienDijo = quien_lo_dijo_view.text, !quienDijo.isEmpty, let queDijo = que_es_lo_que_dijo.text, !queDijo.isEmpty{
            cita_creada = Cita(quien_lo_dijo: quienDijo, que_dijo: queDijo)
            
            opantalla_anterior?.citas_disponibles.agregar_cita(cita_creada!)
                    //Actualizar cantidad de citas
                    opantalla_anterior?.actualizar_cantidad()
                    
                    //Cerrar vista actual
                    dismiss(animated: true, completion: nil)
             
                    
                    } else {
                        // Puedes mostrar un mensaje de error si los campos están vacíos
                        //Pop UP para mensajes de alerta.
                        let alert = UIAlertController(title: "Error", message: "Por favor, completa todos los campos.", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default))
                        present(alert, animated: true)
        }
        /*cita_creada = Cita(quien_lo_dijo: quien_lo_dijo_view.text!, que_dijo: que_es_lo_que_dijo.text!)*/
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
