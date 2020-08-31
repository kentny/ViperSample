//
//  UserInfoPresenter.swift
//  ViperSample
//
//  Created by Kentaro Terasaki on 2020/08/31.
//  Copyright © 2020 Kentaro Terasaki. All rights reserved.
//

import Foundation

class UserInfoPresenter {
   // MARK: - Internal Variables
   // MARK: - Private Variables
   weak var view: UserInfoViewInput!
   private let router: UserInfoWireframe
   private let userInteractor: UserInteractorInput

   init(view: UserInfoViewInput,
        router: UserInfoWireframe,
        userInteractor: UserInteractorInput) {
       self.view = view
       self.router = router
       self.userInteractor = userInteractor
   }

}

extension UserInfoPresenter: UserInfoViewOutput {
    func viewIsReady() {
        
    }
    
    func ageChanged(age: UserAge) {
        // Interactorにデータ保存を指示
        self.userInteractor.save(age: age)
    }
    
}
