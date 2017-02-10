//
//  ViewModel.swift
//  TestAlamofire
//
//  Created by 田腾飞 on 2016/12/12.
//  Copyright © 2016年 田腾飞. All rights reserved.
//

import UIKit
import Alamofire
import RxCocoa
import RxSwift
import SwiftyJSON
import Moya
import ObjectMapper

class ViewModel: NSObject {
    func getCategories() -> Observable<Model> {
        
        return HttpTool
            .request(.unread)
            .filter(statusCodes: 200...500)
            .mapObject(Model.self)
    }
}
