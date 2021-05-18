//
//  RemoteAuthenticationFactory.swift
//  Main
//
//  Created by Débora Lage on 13/05/21.
//

import Foundation
import Data
import Domain

func makeRemoteAuthentication(httpClient: HttpPostClient) -> Authentication {
    let remoteAuthentication = RemoteAuthentication(url: makeApiUrl(path: "login"), httpClient: httpClient)
    return MainQueueDispatchDecorator(remoteAuthentication)
}
