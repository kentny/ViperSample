//
//  WelcomeViewController.swift
//  ViperSample
//
//  Created by Kentaro Terasaki on 2020/08/31.
//  Copyright © 2020 Kentaro Terasaki. All rights reserved.
//

import UIKit
import Foundation

protocol WelcomeViewInput: class {
    /**
        @author Kentaro
        Setup initial state of the view
    */

    func setupInitialState()
}

protocol WelcomeViewOutput: class {
    /**
        @author Kentaro
        Notify presenter that view is ready
    */

    func viewIsReady()
    func nextButtonTapped()
}

class WelcomeViewController: UIViewController {

    // MARK: - Internal variables
    var output: WelcomeViewOutput?

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
    
    func nextButtonTapped() {
        // ボタンタップイベントをPresenterへ通知
        self.output?.nextButtonTapped()
    }
}

extension WelcomeViewController: WelcomeViewInput {
    func setupInitialState() {
        
    }
}
