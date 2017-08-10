//
//  ViewController.swift
//  TestFactorize
//
//  Created by Zhao Wang on 7/27/17.
//  Copyright © 2017 Zhao Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testPrimeFactorize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func testPrimeFactorize() {
        measureBackflushAndVerify(number: "1051473895475943185188722643")
        measureBackflushAndVerify(number: "1093208757760918931821458961")
        measureBackflushAndVerify(number: "244461137395190299921769851")
        measureBackflushAndVerify(number: "226314805358035834565826361")
        measureBackflushAndVerify(number: "203349049209916202464236661")
        measureBackflushAndVerify(number: "255172064656116717706908667")
        measureBackflushAndVerify(number: "277102727591499977422018369")
        measureBackflushAndVerify(number: "184942209274967876075214379")
        measureBackflushAndVerify(number: "237831436598635880570130907")
        measureBackflushAndVerify(number: "261405767112385155541030303")
        measureBackflushAndVerify(number: "276936463777187195972531707")
        measureBackflushAndVerify(number: "247771065637429073788327459")
    }

    fileprivate func measureBackflushAndVerify(number: String) {
        let n = GMPInteger(number).calculateFactors(debug: false)
        print(n.map({ GMPInteger($0).description }))
    }
}

