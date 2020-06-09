//
//  BrandingFactory.swift
//  SwiftDesignModel
//
//  Created by 周素华 on 2/6/2020.
//  Copyright © 2020 周素华. All rights reserved.
//

/*
 当现有的抽象工厂需要支持新产品时，需要向父类添加相应的新工厂方法。这意味着也要修改其子类以支持新产品的新工厂方法
 
 一组相关的子类组合在一起，由其超类创建
 */

import Foundation
import UIKit


class BrandingFactory: NSObject {
    
    private static var brandfactory = "USE_ACME";
    
    static func factory() -> BrandingFactory? {
         
        if brandfactory == "USE_ACME" {
            return AcmeBrandingFactory()
        } else if brandfactory == "USE_ACME" {
            return AcmeBrandingFactory()
        } else {
            return nil;
        }
    }
    
    func brandedView() -> UIView? {
        return nil
    }
    
    func branedMainButton() -> UIButton? {
        return nil
    }
    
    func brandedToolbar() -> UIToolbar? {
        return nil
    }
    
}
