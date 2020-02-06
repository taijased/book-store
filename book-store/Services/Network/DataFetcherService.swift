//
//  DataFetcherService.swift
//  book-store
//
//  Created by Максим Спиридонов on 06.02.2020.
//  Copyright © 2020 Максим Спиридонов. All rights reserved.
//

import Foundation



class DataFetcherService {
    var dataFetcher: DataFetcher
    
    init(dataFetcher: DataFetcher = NetworkDataFetcher()) {
        self.dataFetcher = dataFetcher
    }
    
    
//    func fetchWallpapers(completion: @escaping (YmlCatalog?) -> Void) {
//        let urlString = "https://www.demmoksi.ru/bitrix/catalog_export/yandex.php"
//        dataFetcher.fetchGenericXMLData(urlString: urlString, response: completion)
//    }
    
}
