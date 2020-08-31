//
//  User.swift
//  ViperSample
//
//  Created by Kentaro Terasaki on 2020/08/31.
//  Copyright © 2020 Kentaro Terasaki. All rights reserved.
//

import Foundation


// EnumはそれぞれStringを継承し、そのまま DynamoDBに登録できるように定義する。
enum UserState: String {
    case Hokkaido       = "Hokkaido"
    case Aomori         = "Aomori"
//    略
    case unknown        = "Unknown"
}

enum UserWeight: String {
    case under30kg      = "0-29"
    case from30To34kg   = "30-34"
    case from35To39kg   = "35-39"
//    省略
    case over100kg      = "100-"
    case unknown        = "Unknown"
}

enum UserHeight: String {
    case under140cm     = "0-139"
    case from140To144cm = "140-144"
    case from145To149cm = "145-149"
//    省略
    case over190cm      = "190-"
    case unknown        = "Unknown"
}

enum UserAge: String {
    case under20        = "0-19"
    case from20To29     = "20-29"
    case from30To39     = "30-39"
//    "40-49", "50-59", "60-",
    case unknown        = "Unknown"
}

enum UserGender: String {
    case male           = "Male"
    case female         = "Female"
    case unknown        = "Unknown"
}

struct User {
    var state: UserState
    var weight: UserWeight
    var height: UserHeight
    var age: UserAge
    var gender: UserGender
}
