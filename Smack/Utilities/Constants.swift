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
//Segues
let TO_LOGIN="toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChanner"

//user Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"




