//
//  UserInteractor.swift
//  ViperSample
//
//  Created by Kentaro Terasaki on 2020/08/31.
//  Copyright © 2020 Kentaro Terasaki. All rights reserved.
//

import Foundation

protocol UserInteractorInput: class {
    // 保存
    func save(age: UserAge) -> User
    func save(height: UserHeight) -> User
    func save(weght: UserWeight) -> User
    func save(state: UserState) -> User
    func save(gender: UserGender) -> User
    
    // 読み込み
    func get() -> User
}

class UserInteractor: UserInteractorInput {
    func save(age: UserAge) -> User {
        // 情報を保存し、現在保存されているUser情報を全て返す
        return User()
    }
    
    func save(height: UserHeight) -> User {
       // 情報を保存し、現在保存されているUser情報を全て返す
       return User()
    }
    
    func save(weght: UserWeight) -> User {
        // 情報を保存し、現在保存されているUser情報を全て返す
        return User()
    }
    
    func save(state: UserState) -> User {
        // 情報を保存し、現在保存されているUser情報を全て返す
        return User()
    }
    
    func save(gender: UserGender) -> User {
        // 情報を保存し、現在保存されているUser情報を全て返す
        return User()
    }
    
    func get() -> User {
        // 現在保存されているUser情報を返す
        return User()
    }
}
