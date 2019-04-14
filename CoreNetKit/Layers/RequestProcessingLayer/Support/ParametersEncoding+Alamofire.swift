//
//  ParametersEncoding+Alamofire.swift
//  CoreNetKit
//
//  Created by Александр Кравченков on 23/03/2019.
//  Copyright © 2019 Кравченков Александр. All rights reserved.
//

import Alamofire

/// Содержит конвертирование CoreNetKit.ParametersEncoding в Alamofire.ParameterEncoding
extension CoreNetKit.ParametersEncoding {

    /// Содержит конвертирование CoreNetKit.ParametersEncoding в Alamofire.ParameterEncoding
    public var raw: ParameterEncoding {
        switch self {
        case .json:
            return JSONEncoding.default
        case .formUrl:
            return URLEncoding.default
        case .urlQuery:
            return URLEncoding.queryString
        }
    }
}