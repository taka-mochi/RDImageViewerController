//
//  RDPagingViewRightToLeftFlowLayout.swift
//  Pods-RDImageViewerController_Example
//
//  Created by Akira Matsuda on 2019/04/09.
//

import UIKit

class RDPagingViewRightToLeftFlowLayout: RDPagingViewHorizontalFlowLayout {
    
    override var flipsHorizontallyInOppositeLayoutDirection: Bool {
        return true
    }
    
    override var developmentLayoutDirection: UIUserInterfaceLayoutDirection {
        return .rightToLeft
    }

}
