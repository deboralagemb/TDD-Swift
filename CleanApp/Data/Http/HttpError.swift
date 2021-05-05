//
//  HttpError.swift
//  Data
//
//  Created by Débora Lage on 16/04/21.
//

import Foundation

public enum HttpError: Error {
    case noConnectivity
    case badRequest
    case serverError
    case unauthorized
    case forbidden
}
