//
//  WelcomeRouter.swift
//  ViperSample
//
//  Created by Kentaro Terasaki on 2020/08/31.
//  Copyright © 2020 Kentaro Terasaki. All rights reserved.
//

import Foundation
import UIKit

protocol WelcomeWireframe: class {
    func goToUserInfoPage()
}

class WelcomeRouter {
    weak var viewController: UIViewController?

    private init(viewController: UIViewController) {
        self.viewController = viewController
    }

    class func assembleModule() -> UIViewController {
        // Viewインスタンス作成
        let view = UIStoryboard(name: "Welcome", bundle: .main).instantiateInitialViewController() as! WelcomeViewController
        
        // Routerインスタンス作成
        let router = WelcomeRouter(viewController: view)
        
        // 必要なInteractorのインスタンス作成
        // Interactorが複数必要な場合は、ここで必要なInteractorのインスタンスを全て作成して、Presenterに渡す
        // Interactorが不要だったら無しでもOK

        // Presenterインスタンス作成
        let presenter = WelcomePresenter(view: view,
                                          router: router)
        view.output = presenter   // ViewにPresenterを設定
        return view
    }
}

extension WelcomeRouter: WelcomeWireframe {
    // 次の画面へ遷移する関数
    // 次の画面に変数を受け渡す時には、ここで引数に与える
    func goToUserInfoPage() {
        // 次の画面のViewインスタンスを受け取る
        let view = UserInfoRouter.assembleModule()
        self.viewController?.present(view, animated: true, completion: nil)
    }
}
