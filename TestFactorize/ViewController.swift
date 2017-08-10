//
//  ViewController.swift
//  TestFactorize
//
//  Created by Zhao Wang on 7/27/17.
//  Copyright © 2017 Zhao Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var ss: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ss = testPrimeFactorize()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let v = UITextView()
        self.view.addSubview(v)
        v.frame = self.view.frame
        v.frame.origin = CGPoint(x: 5, y: 10)
        v.text = ss.joined(separator: "\n")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func testPrimeFactorize() -> [String] {
        var ss = [String]()
        let start = CACurrentMediaTime()
        ss.append(measureBackflushAndVerify(number: "1051473895475943185188722643"))
        ss.append(measureBackflushAndVerify(number: "1093208757760918931821458961"))
        ss.append(measureBackflushAndVerify(number: "244461137395190299921769851"))
        ss.append(measureBackflushAndVerify(number: "226314805358035834565826361"))
        ss.append(measureBackflushAndVerify(number: "203349049209916202464236661"))
        ss.append(measureBackflushAndVerify(number: "255172064656116717706908667"))
        ss.append(measureBackflushAndVerify(number: "277102727591499977422018369"))
        ss.append(measureBackflushAndVerify(number: "184942209274967876075214379"))
        ss.append(measureBackflushAndVerify(number: "237831436598635880570130907"))
        ss.append(measureBackflushAndVerify(number: "261405767112385155541030303"))
        ss.append(measureBackflushAndVerify(number: "276936463777187195972531707"))
        ss.append(measureBackflushAndVerify(number: "247771065637429073788327459"))
        let stop = CACurrentMediaTime()
        ss.append("Total time: \(stop - start) seconds.")
        return ss
    }

    fileprivate func measureBackflushAndVerify(number: String) -> String {
        let n = GMPInteger(number).calculateFactors(debug: false)
        return number + " = \(n.map({ GMPInteger($0).description }))"
    }
}

