//
//  User.swift
//  App
//
//  Created by venkatesh chitrali on 25/08/19.
//
import FluentSQLite
import Vapor

final class User: Codable{
    var id : UUID?
    var name : String
    var userName : String
    
    init(name : String,userName : String) {
        self.name = name
        self.userName = userName
    }
}

extension User: SQLiteUUIDModel { }
extension User: Content { }
extension User: Parameter {}
extension User: Migration { }
