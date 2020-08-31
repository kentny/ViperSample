//
//  WelcomePresenter.swift
//  ViperSample
//
//  Created by Kentaro Terasaki on 2020/08/31.
//  Copyright © 2020 Kentaro Terasaki. All rights reserved.
//

import Foundation

class WelcomePresenter {
   // MARK: - Internal Variables
   // MARK: - Private Variables
   weak var view: WelcomeViewInput!
   private let router: WelcomeWireframe

   init(view: WelcomeViewInput,
        router: WelcomeWireframe) {
       self.view = view
       self.router = router
   }

}

extension WelcomePresenter: WelcomeViewOutput {
    func viewIsReady() {
        
    }
    
    func nextButtonTapped() {
        // Routerに次の画面への遷移を指示
        self.router.goToUserInfoPage()
    }
}
