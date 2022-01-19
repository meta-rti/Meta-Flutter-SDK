//
//  MediaObserver.swift
//  RCTMeta
//
//  Created by 3 on 2020/12/7.
//

import Foundation
import MetaRTCFramework

class MediaObserver: NSObject {
    private var emitter: (_ data: Dictionary<String, Any?>?) -> Void
    private var maxMetadataSize = 0
    private var metadataList = [String]()

    init(_ emitter: @escaping (_ data: Dictionary<String, Any?>?) -> Void) {
        self.emitter = emitter
    }

    func addMetadata(_ metadata: String) {
        metadataList.append(metadata)
    }

    func setMaxMetadataSize(_ size: Int) {
        maxMetadataSize = size
    }
}

extension MediaObserver: MetaMediaMetadataDataSource {
    func metadataMaxSize() -> Int {
        return maxMetadataSize
    }

    func readyToSendMetadata(atTimestamp timestamp: TimeInterval) -> Data? {
        if metadataList.count > 0 {
            return metadataList.remove(at: 0).data(using: .utf8)
        }
        return nil
    }
}

extension MediaObserver: MetaMediaMetadataDelegate {
    func receiveMetadata(_ data: Data, fromUser uid: Int, atTimestamp timestamp: TimeInterval) {
        emitter([
            "buffer": String(data: data, encoding: .utf8),
            "uid": uid,
            "timeStampMs": timestamp
        ])
    }
}
