//
//  RepositoryBuilder.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 28/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import Networking

public class RepositoryBuilder {
    
    static var DefaultNetworkingConfiguration: NetworkingConfiguration {
        var config = NetworkingConfiguration()
        config.domainURL = "swift-training-backend.herokuapp.com"
        return config
    }
    
    static func getDefaultBookRepository() -> BookRepository {
        let defaultHeaders = ["Content-Type": "application/json", "Accept": "application/json"]
        return BookRepository(configuration: RepositoryBuilder.DefaultNetworkingConfiguration, defaultHeaders: defaultHeaders)
    }
    
}
