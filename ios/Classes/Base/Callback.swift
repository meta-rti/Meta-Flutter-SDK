//
//  Callback.swift
//  RCTWuji
//
//  Created by 3 on 2020/12/7.
//

import Foundation
import WujiRTCFramework

@objc
protocol Callback: class {
    func success(_ data: Any?)

    func failure(_ code: String, _ message: String)
}

extension Callback {
    func code(_ code: Int32?, _ runnable: ((Int32) -> Any?)? = nil) {
        if code == nil || code! < 0 {
            let newCode = abs(Int(code ?? Int32(WujiErrorCode.notInitialized.rawValue)))
            failure(String(newCode), WujiRtcEngineKit.getErrorDescription(newCode) ?? "")
            return
        }

        let res = runnable?(code!)
        if res is Void {
            success(nil)
        } else {
            success(res)
        }
    }

    func resolve<T>(_ source: T?, _ runnable: (T) -> Any?) {
        guard let `source` = source else {
            let code = WujiErrorCode.notInitialized.rawValue
            failure(String(code), WujiRtcEngineKit.getErrorDescription(code) ?? "")
            return
        }

        let res = runnable(source)
        if res is Void {
            success(nil)
        } else {
            success(res)
        }
    }
}
