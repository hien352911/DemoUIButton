//
//  MyShrinkingButton.swift
//  DemoUIButton
//
//  Created by MTQ on 10/30/18.
//  Copyright © 2018 MTQ. All rights reserved.
//

import UIKit

class MyShrinkingButton: UIButton {

    override func backgroundRect(forBounds bounds: CGRect) -> CGRect {
        var result = super.backgroundRect(forBounds: bounds)
        if self.isHighlighted {
            result = result.insetBy(dx: 10, dy: 10)
        }
        return result
    }
    
    override var intrinsicContentSize: CGSize {
        return super.intrinsicContentSize.sizeByDelta(dw: 0, dh: 0)
    }

}

extension CGSize {
    func sizeByDelta(dw:CGFloat, dh:CGFloat) -> CGSize {
        return CGSize(width:self.width + dw, height:self.height + dh)
    }
}
