//
//  EstiloCellViewControllerCelular.swift
//  Boceto2
//
//  Created by alumno on 10/11/24.
//
import UIKit

extension ControladorPantallaPrincipalDeColeccion: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var ancho = self.collectionView.frame.width
        var largo = self.collectionView.frame.height
        
        ancho = ancho / 1.1
        largo = largo * 0.5
        
        return CGSize(width: ancho, height: largo)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        let margin = CGFloat(10)
        
        return UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            
            return 5
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
    }
}

/*extension ControladorPantallaPrincipalDeColeccion: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    // Method 2
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
    }
    // Method 3
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
    }
    //Method 4
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let collectionViewWidth = self.collectionView.frame.width
        let collectionViewHeight =  self.collectionView.frame.height
        
        let cellWidth = (collectionViewWidth) / 1.1
        let cellHeight = cellWidth * 0.5
        
        return CGSize(width: cellWidth , height: cellHeight)
        
    }
    
    override func viewWillLayoutSubviews() {
        print("REPRENDER ESTAS mmadas")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        (self.navigationController as? mod_navegador_principal)?.activar_navigation_bar(actviar: false)

    }
}*/
