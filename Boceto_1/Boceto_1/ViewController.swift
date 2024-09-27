//
//  ViewController.swift
//  Boceto_1
//
//  Created by alumno on 9/20/24.
//

import UIKit



class ViewController: UIViewController {
    var Cita_para_enviar: Cita = Cita(quien_lo_dijo: "Slime", que_dijo: "glupglupglup")
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()

    @IBOutlet weak var labelcito: UILabel!
    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let valor = Int.random(in: 0...100)
        
        actualizar_cantidad()
        
    }
    func actualizar_cantidad(){
        labelcito.text = String(citas_disponibles.citas_creadas.count)
    }
    
    @IBSegueAction func al_abrir_la_pantalla(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar:citas_disponibles.obtener_cita_aleatoria(), coder: coder)
    }
    
    @IBAction func volver_a_pantalla_inicio(segue: UIStoryboardSegue){
        if let pantalla_agregar_citas = segue.source as? ControladorGeneradorCita{
            citas_disponibles.agregar_cita(pantalla_agregar_citas.cita_creada!)
        }
        
        actualizar_cantidad()
    }
    

}

