//
//  Post.swift
//  Boceto2
//
//  Created by alumno on 10/9/24.
//

struct Post: Codable{
    //Decodable: Permite convertir informacion json a un modelo de swift
    //Encodable: Permite convertir un modelo de swift a json
    //Codable: Ambas al mismo tiempo
    var User: Int
    var id : Int
    var titulo: String
    var cuerpo: String
}
