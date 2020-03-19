/*
 * QRCodeReader.swift
 *
 * Copyright 2014-present Yannick Loriot.
 * http://yannickloriot.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

import Foundation
import UIKit

/**
 The QRCodeViewControllerBuilder aims to create a simple configuration object for
 the QRCode view controller.
 */
internal final class QRCodeReaderViewControllerBuilder {
  // MARK: - Configuring the QRCodeViewController Objects

  /**
   The builder block.
   The block gives a reference of builder you can configure.
   */
  internal typealias QRCodeReaderViewControllerBuilderBlock = (QRCodeReaderViewControllerBuilder) -> Void

  /**
   The title to use for the cancel button.
   */
  internal var cancelButtonTitle = "Cancel"
    
    /**
     Icon used for torch buttton
     */
    internal var torchButtonIcon:UIImage?

  /**
   The code reader object used to scan the bar code.
   */
  internal var reader = QRCodeReader()

  /**
   The reader container view used to display the video capture and the UI components.
   */
  internal var readerView = QRCodeReaderContainer(displayable: QRCodeReaderView())

  /**
   Flag to know whether the view controller start scanning the codes when the view will appear.
   */
  internal var startScanningAtLoad = true

  /**
   Flag to display the cancel button.
   */
  internal var showCancelButton = true

  /**
   Flag to display the switch camera button.
   */
  internal var showSwitchCameraButton: Bool {
    get {
      return _showSwitchCameraButton && reader.hasFrontDevice
    }
    set {
      _showSwitchCameraButton = newValue
    }
  }
  private var _showSwitchCameraButton: Bool = true

  /**
   Flag to display the toggle torch button. If the value is true and there is no torch the button will not be displayed.
   */
  internal var showTorchButton: Bool {
    get {
      return _showTorchButton && reader.isTorchAvailable
    }
    set {
      _showTorchButton = newValue
    }
  }
  private var _showTorchButton = true

  /**
   Flag to display the guide view.
   */
  internal var showOverlayView = false

  /**
    Flag to display the guide view.
  */
  internal var handleOrientationChange = true

  /**
   A UIStatusBarStyle key indicating your preferred status bar style for the view controller.
   Nil by default. It means it'll use the current context status bar style.
  */
  internal var preferredStatusBarStyle: UIStatusBarStyle? = nil

  /**
   Specifies a rectangle of interest for limiting the search area for visual metadata.

   The value of this property is a CGRect that determines the receiver's rectangle of interest for each frame of video. The rectangle's origin is top left and is relative to the coordinate space of the device providing the metadata. Specifying a rectOfInterest may improve detection performance for certain types of metadata. The default value of this property is the value CGRectMake(0, 0, 1, 1). Metadata objects whose bounds do not intersect with the rectOfInterest will not be returned.
  */
  internal var rectOfInterest: CGRect = CGRect(x: 0, y: 0, width: 1, height: 1) {
    didSet {
      reader.metadataOutput.rectOfInterest = CGRect(
        x: min(max(rectOfInterest.origin.x, 0), 1),
        y: min(max(rectOfInterest.origin.y, 0), 1),
        width: min(max(rectOfInterest.width, 0), 1),
        height: min(max(rectOfInterest.height, 0), 1)
      )
    }
  }

  // MARK: - Initializing a Flap View

  /**
   Initialize a QRCodeViewController builder with default values.
   */
  internal init() {}

  /**
   Initialize a QRCodeReaderViewController builder with default values.

   - parameter buildBlock: A QRCodeReaderViewController builder block to configure itself.
   */
  internal init(buildBlock: QRCodeReaderViewControllerBuilderBlock) {
    buildBlock(self)
  }
}
