//
//  LayoutSupport.swift
//  Cartography
//
//  Created by Timothy Chilvers on 30/03/2016.
//  Copyright © 2016 Robert Böhnke. All rights reserved.
//

import Foundation

#if os(iOS) || os(tvOS) || os(visionOS)
    import UIKit

    public final class LayoutSupport: LayoutItem {
        let layoutGuide : NSLayoutYAxisAnchor

        init(layoutGuide: NSLayoutYAxisAnchor) {
            self.layoutGuide = layoutGuide
        }

        public func asProxy(context: Context) -> LayoutSupportProxy {
            return LayoutSupportProxy(context: context, item: self)
        }
    }

    public extension UIViewController {
        var car_topLayoutGuide : LayoutSupport {
            get {
                return LayoutSupport(layoutGuide: self.view.safeAreaLayoutGuide.topAnchor)
            }
        }
        
        var car_bottomLayoutGuide : LayoutSupport {
            get {
                return LayoutSupport(layoutGuide: self.view.safeAreaLayoutGuide.bottomAnchor)
            }
        }
    }

#endif
