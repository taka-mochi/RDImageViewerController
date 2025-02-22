//
//  ReloadImageViewerController.swift
//  RDImageViewerController_Example
//
//  Created by Akira Matsuda on 2019/04/12.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import RDImageViewerController

class ReloadImageViewerController: RDImageViewerController {
    override init(contents: [RDPageContentData], direction: RDPagingView.ForwardDirection) {
        super.init(contents: contents, direction: direction)
        let items = [UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(reload)), UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(push))]
        navigationItem.setRightBarButtonItems(items, animated: true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func reload() {
        currentPageIndex = 0
        let contents = ContentsFactory.randomContents()
        print(contents)
        update(contents: contents)
    }
    
    @objc func push() {
        let viewController = ReloadImageViewerController(contents: ContentsFactory.scrollContents(), direction: pagingView.direction)
        viewController.showSlider = showSlider
        viewController.showPageNumberHud = showPageNumberHud
        viewController.title = "View and Image"
        navigationController?.pushViewController(viewController, animated: true)
    }
}
