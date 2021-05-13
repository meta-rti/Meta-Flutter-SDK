//
//  ResultCallback.swift
//  RCTWuji
//
//  Created by 3 on 2020/12/7.
//

import Foundation

class ResultCallback: NSObject, Callback {
    private var result: FlutterResult?

    init(_ result: FlutterResult?) {
        self.result = result
    }

    func success(_ data: Any?) {
        result?(data)
    }

    func failure(_ code: String, _ message: String) {
        result?(FlutterError.init(code: code, message: message, details: nil))
    }
}
