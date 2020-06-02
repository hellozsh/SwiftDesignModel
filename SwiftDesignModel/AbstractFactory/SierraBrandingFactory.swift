//
//  SierraBrandingFactory.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class SierraBrandingFactory: BrandingFactory {
     
    override func brandedView() -> UIView? {
        
        return SierraView()
    }
    
    override func branedMainButton() -> UIButton? {
        
        return SierraMainButton()
    }
    
    override func brandedToolbar() -> UIToolbar? {
        
        return SierraToolbar()
    }
}
