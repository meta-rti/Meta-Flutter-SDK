//
//  RtcSurfaceView.swift
//  RCTMeta
//
//  Created by 3 on 2020/12/7.
//

import Foundation
import UIKit
import MetaRTCFramework

class RtcSurfaceView: UIView {
    private lazy var canvas: MetaRtcVideoCanvas = {
        var canvas = MetaRtcVideoCanvas()
        canvas.view = self
        return canvas
    }()
    private weak var channel: MetaRtcChannel?

    func setData(_ engine: MetaRtcEngineKit, _ channel: MetaRtcChannel?, _ uid: Int) {
        self.channel = channel
        canvas.channelId = channel?.getId()
        canvas.uid = UInt(uid)
        setupVideoCanvas(engine)
    }
    
    func resetVideoCanvas(_ engine: MetaRtcEngineKit) {
        let canvas = MetaRtcVideoCanvas()
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
    
    private func setupVideoCanvas(_ engine: MetaRtcEngineKit) {
        if canvas.uid == 0 {
            engine.setupLocalVideo(canvas)
        } else {
            engine.setupRemoteVideo(canvas)
        }
    }
    
    func setRenderMode(_ engine: MetaRtcEngineKit, _ renderMode: Int) {
        canvas.renderMode = MetaVideoRenderMode(rawValue: UInt(renderMode))!
        setupRenderMode(engine)
    }

    func setMirrorMode(_ engine: MetaRtcEngineKit, _ mirrorMode: Int) {
        canvas.mirrorMode = MetaVideoMirrorMode(rawValue: UInt(mirrorMode))!
        setupRenderMode(engine)
    }

    private func setupRenderMode(_ engine: MetaRtcEngineKit) {
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
