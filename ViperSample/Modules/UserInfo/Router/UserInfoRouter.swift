//
//  UserInfoRouter.swift
//  ViperSample
//
//  Created by Kentaro Terasaki on 2020/08/31.
//  Copyright © 2020 Kentaro Terasaki. All rights reserved.
//

import Foundation
import UIKit

protocol UserInfoWireframe: class {
}

class UserInfoRouter {
    weak var viewController: UIViewController?

    private init(viewController: UIViewController) {
        self.viewController = viewController
    }

    class func assembleModule() -> UIViewController {
        // Viewインスタンス作成
        let view = UIStoryboard(name: "UserInfo", bundle: .main).instantiateInitialViewController() as! UserInfoViewController
        
        // Routerインスタンス作成
        let router = UserInfoRouter(viewController: view)
        
        // 必要なInteractorのインスタンス作成
        // Interactorが複数必要な場合は、ここで必要なInteractorのインスタンスを全て作成して、Presenterに渡す
        let userInteractor = UserInteractor()

        // Presenterインスタンス作成
        let presenter = UserInfoPresenter(view: view,
                                          router: router,
                                          userInteractor: userInteractor)
        view.output = presenter   // ViewにPresenterを設定
        return view
    }
}

extension UserInfoRouter: UserInfoWireframe {
    
}
