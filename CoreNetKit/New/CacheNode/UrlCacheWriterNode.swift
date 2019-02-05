//
//  UrlCacheWriterNode.swift
//  CoreNetKitWithExample
//
//  Created by Александр Кравченков on 28/11/2018.
//  Copyright © 2018 Александр Кравченков. All rights reserved.
//

import Foundation

open class UrlCacheWriterNode: Node<UrlProcessedResponse, Void> {
    open override func process(_ data: UrlProcessedResponse) -> Context<Void> {
        let cahced = CachedURLResponse(response: data.response, data: data.data, storagePolicy: .allowed)
        URLCache.shared.storeCachedResponse(cahced, for: data.request)
        return Context<Void>().emit(data: ())
    }
}
