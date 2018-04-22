//
//  Constants.swift
//  Smack
//
//  Created by ioannis giannakidis on 07/04/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import Foundation
typealias CompletionHandler = (_ Success:Bool) ->()
//URL Constants
let BASE_URL = "https://chattychattest1.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
//COLORS
let smackPurplePlaceholder = #colorLiteral(red: 0.3631127477, green: 0.4045833051, blue: 0.8775706887, alpha: 0.5)
//Notification Constants
let NOTIF_USER_DATA_DIDCHANGE = Notification.Name("notifUserDataChanged")
//Segues
let TO_LOGIN="toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChanner"
let TO_AVATAR_PICKER="toAvatarPicker"

//user Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]


