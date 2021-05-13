//
//  RtcSurfaceView.swift
//  RCTWuji
//
//  Created by 3 on 2020/12/7.
//

import Foundation
import UIKit
import WujiRTCFramework

class RtcSurfaceView: UIView {
    private lazy var canvas: WujiRtcVideoCanvas = {
        var canvas = WujiRtcVideoCanvas()
        canvas.view = self
        return canvas
    }()
    private weak var channel: WujiRtcChannel?

    func setData(_ engine: WujiRtcEngineKit, _ channel: WujiRtcChannel?, _ uid: Int) {
        self.channel = channel
        canvas.channelId = channel?.getId()
        canvas.uid = UInt(uid)
        setupVideoCanvas(engine)
    }
    
    func resetVideoCanvas(_ engine: WujiRtcEngineKit) {
        let canvas = WujiRtcVideoCanvas()
        canvas.view = nil
        canvas.renderMode = self.canvas.renderMode
        canvas.channelId = self.canvas.channelId
        canvas.uid = self.canvas.uid
        canvas.mirrorMode = self.canvas.mirrorMode
        
        if canvas.uid == 0 {
            engine.setupLocalVideo(canvas)
        } else {
            engine.setupRemoteVideo(canvas)
        }
    }
    
    private func setupVideoCanvas(_ engine: WujiRtcEngineKit) {
        if canvas.uid == 0 {
            engine.setupLocalVideo(canvas)
        } else {
            engine.setupRemoteVideo(canvas)
        }
    }
    
    func setRenderMode(_ engine: WujiRtcEngineKit, _ renderMode: Int) {
        canvas.renderMode = WujiVideoRenderMode(rawValue: UInt(renderMode))!
        setupRenderMode(engine)
    }

    func setMirrorMode(_ engine: WujiRtcEngineKit, _ mirrorMode: Int) {
        canvas.mirrorMode = WujiVideoMirrorMode(rawValue: UInt(mirrorMode))!
        setupRenderMode(engine)
    }

    private func setupRenderMode(_ engine: WujiRtcEngineKit) {
        if canvas.uid == 0 {
            engine.setLocalRenderMode(canvas.renderMode, mirrorMode: canvas.mirrorMode)
        } else {
            if let `channel` = channel {
                channel.setRemoteRenderMode(canvas.uid, renderMode: canvas.renderMode, mirrorMode: canvas.mirrorMode)
            } else {
                engine.setRemoteRenderMode(canvas.uid, renderMode: canvas.renderMode, mirrorMode: canvas.mirrorMode)
            }
        }
    }
}
