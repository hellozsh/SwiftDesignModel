//
//  AcmeBrandingFactory.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

import Foundation
import UIKit

class AcmeBrandingFactory: BrandingFactory {
    
    override func brandedView() -> UIView? {
        
        return AcmeView()
    }
    
    override func branedMainButton() -> UIButton? {
        
        return AcmeMainButton()
    }
    
    override func brandedToolbar() -> UIToolbar? {
        
        return AcmeToolBar()
    }
    
}
