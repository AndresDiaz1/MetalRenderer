//
//  ViewController.swift
//  MetalRenderer
//
//  Created by Andres Diaz on 12/15/20.
//  Copyright © 2020 Andres Diaz. All rights reserved.
//

import Cocoa
import MetalKit
class ViewController: NSViewController {

    @IBOutlet var metalView: MTKView!
    var renderer: Renderer?
    override func viewDidLoad() {
        super.viewDidLoad()
        renderer = Renderer(view: metalView)
        metalView.device = Renderer.device
        metalView.delegate = renderer
        metalView.clearColor = MTLClearColor(red: 1.0, green: 1.0, blue: 0.8, alpha: 1.0)
        // Do any additional setup after loading the view.
    }
}

