//
//  ViewController.swift
//  testOnOpenTokPublisher
//
//  Created by Victor Reinoso on 2/9/20.
//  Copyright © 2020 Assistcard. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    public let sessionId1 = "2_MX40NjI1NjE0Mn5-MTU4MTE4OTEyNjUyNn56RjF6MWJhQzd2NitwNWVEZGxmc1g2UDZ-fg"
    public let token1 = "T1==cGFydG5lcl9pZD00NjI1NjE0MiZzaWc9ZDg1N2JhMDc2OGU4MTYwMjZhNjRkNDA2NDVkNzZiYTVlYjE2NDQ5NTpzZXNzaW9uX2lkPTJfTVg0ME5qSTFOakUwTW41LU1UVTRNVEU0T1RFeU5qVXlObjU2UmpGNk1XSmhRemQyTml0d05XVkVaR3htYzFnMlVEWi1mZyZjcmVhdGVfdGltZT0xNTgxMTg5MTQyJm5vbmNlPTAuODU4OTgyNTQwNzcwODQ2NSZyb2xlPXB1Ymxpc2hlciZleHBpcmVfdGltZT0xNTgzNzc3NTQxJmluaXRpYWxfbGF5b3V0X2NsYXNzX2xpc3Q9"
    public var sessionId2 = "2_MX40NjI1NjE0Mn5-MTU4MTE5NTI2NTc4NH5DMGNTY29sVlpQWXd4cjk5aUJXTXpZMUt-fg"
    public let token2 = "T1==cGFydG5lcl9pZD00NjI1NjE0MiZzaWc9YjRiM2Q3NmY5MTEzYjdhMTMyNGRhZGYzZjVkOWNlMWUwOWM4NWE3ZTpzZXNzaW9uX2lkPTJfTVg0ME5qSTFOakUwTW41LU1UVTRNVEU1TlRJMk5UYzROSDVETUdOVFkyOXNWbHBRV1hkNGNqazVhVUpYVFhwWk1VdC1mZyZjcmVhdGVfdGltZT0xNTgxMTk1MzQ5Jm5vbmNlPTAuMjgwMDUxNjAyNDk4NzI4OTYmcm9sZT1wdWJsaXNoZXImZXhwaXJlX3RpbWU9MTU4Mzc4Mzc0OCZpbml0aWFsX2xheW91dF9jbGFzc19saXN0PQ=="
    
    @IBAction func goToFirstSession(_ sender: Any) {
        
//            kSessionID = sessionId1
//            kToken = token1
        goToNewScreen(screenName: "Videocall", storyBoardIdentifier: "Video", presentationStyle: .fullScreen)
    }
    
    @IBAction func goToSecondSession(_ sender: Any) {
//        
//        kSessionID = sessionId2
//        kToken = token2
        goToNewScreen(screenName: "Videocall", storyBoardIdentifier: "Video", presentationStyle: .fullScreen)
    }
    
    open func goToNewScreen(screenName: String, storyBoardIdentifier: String, presentationStyle : UIModalPresentationStyle ) {
        let bundle = Bundle(identifier: "com.assistcard.OpenTok-Issue-on-Publisher")
        let storyboard = UIStoryboard(name: screenName, bundle: bundle)
        let vc = storyboard.instantiateViewController(withIdentifier: storyBoardIdentifier)
        vc.modalPresentationStyle = presentationStyle
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
    }


}




