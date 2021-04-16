//
//  HttpPostClient.swift
//  Data
//
//  Created by Débora Lage on 16/04/21.
//

import Foundation

public protocol HttpPostClient {
    func post(to url: URL, with data: Data?, completion: @escaping (HttpError) -> Void)
}
