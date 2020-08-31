//
//  UserInfoViewController.swift
//  ViperSample
//
//  Created by Kentaro Terasaki on 2020/08/31.
//  Copyright © 2020 Kentaro Terasaki. All rights reserved.
//

import UIKit

protocol UserInfoViewInput: class {
    /**
        @author Kentaro
        Setup initial state of the view
    */

    func setupInitialState()
}

protocol UserInfoViewOutput: class {
    /**
        @author Kentaro
        Notify presenter that view is ready
    */

    func viewIsReady()
    func ageChanged(age: UserAge)
    func nextButtonTapped()
}

class UserInfoViewController: UIViewController {

    // MARK: - Internal variables
    var output: UserInfoViewOutput?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.output?.viewIsReady()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func ageChaged(index: Int) {
        // Viewの表示のされ方（Indexとか、文言とか）をEntityで定義されたデータの方に変換する。
        // これによって、View以外に表示のされ方の仕様に影響されないようにする。
        var age: UserAge = .unknown
        switch index {
        case 0:
            age = .under20
        case 1:
            age = .from20To29
        // 略
        default:
            age = .unknown
        }
        self.output?.ageChanged(age: age)
    }
    
    func nextButtonTapped() {
        // ボタンタップイベントをPresenterへ通知
        self.output?.nextButtonTapped()
    }
}

extension UserInfoViewController: UserInfoViewInput {
    func setupInitialState() {
        
    }
}
