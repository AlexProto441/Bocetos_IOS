//
//  ControladorPantallaPrincipalDeColeccion.swift
//  Boceto2
//
//  Created by alumno on 10/7/24.
//

import UIKit

//private let IdentificadroDeCelda = "Celda_Pantalla_Principal"

class ControladorPantallaPrincipalDeColeccion: UICollectionViewController {
    private var Lista_de_publicaciones : [Publicacion] = []
    private let url_de_publicaciones = "https://jsonplaceholder.typicode.com/posts"
    
    private let IdentificadroDeCelda = "Celda_Pantalla_Principal"

    override func viewDidLoad() {
        super.viewDidLoad()
        let Ubicacion = URL(string: url_de_publicaciones)!
        URLSession.shared.dataTask(with: Ubicacion){(datos, respuesta, error) 
            in do{
                if let publicaciones_recibidas = datos{
                    let prueba_de_interpretacion_de_datos = try JSONDecoder().decode([Publicacion].self, from: publicaciones_recibidas)
                    
                    self.Lista_de_publicaciones = prueba_de_interpretacion_de_datos
                        DispatchQueue.main .async {
                            self.collectionView.reloadData()
                        }
                }
                else {
                    print(respuesta)
                }
            } catch {
                print("Error")
            }
            
        }.resume()
        
        print(Lista_de_publicaciones)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: IdentificadroDeCelda)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.Lista_de_publicaciones.count
    }
    //funcion para identificar y crear cada una de las celdas creadas en el controller
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda: VistaDeZelda = collectionView.dequeueReusableCell(withReuseIdentifier: IdentificadroDeCelda, for: indexPath) as! VistaDeZelda
    
        // Configure the cell
        //celda.backgroundColor = UIColor.green
        
        celda.Title.text = self.Lista_de_publicaciones[indexPath.item].title
        celda.Cuerpo.text = self.Lista_de_publicaciones[indexPath.item].body
        
        return celda
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Se selecciono una celda \(indexPath)")
        
        let pantalla_de_publicacion = storyboard?.instantiateViewController(withIdentifier: "PantallaPublicacion") as! ControladorPantallaDelPost
                
                // pantalla_de_publicacion.id_publicacion = indexPath.item
        pantalla_de_publicacion.id_publicacion = self.Lista_de_publicaciones[indexPath.item].id
                
                self.navigationController?.pushViewController(pantalla_de_publicacion, animated: true)
                
                //print(self.navigationController)

            }
        
        //let pantalla_de_publicaciones = storyboard?.instantiateViewController(withIdentifier: "PantallaPublicacion") as! ControladorPantallaDelPost
        //self.navigationController?.pushViewController(pantalla_de_publicaciones, animated: true)
        
        //print(self.navigationController)
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
