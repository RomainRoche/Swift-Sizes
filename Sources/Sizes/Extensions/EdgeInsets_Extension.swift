//
//  File.swift
//  
//
//  Created by Romain Roche on 20/01/2022.
//

import SwiftUI

// MARK: - EdgeInsets helpers

extension EdgeInsets {
    
    /// `EdgeInsets` with `.leading` and `.trailing` values.
    /// - Parameter insets: The insets value for `.leading` and `.trailing`.
    /// - Returns: `EdgeInsets`.
    public static func horizontal(_ insets: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: insets, bottom: 0, trailing: insets)
    }
    
    /// `EdgeInsets` with `.top` and `.bottom` values.
    /// - Parameter insets: The insets value for `.top` and `.bottom`.
    /// - Returns: `EdgeInsets`.
    public static func vertical(_ insets: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: insets, leading: 0, bottom: insets, trailing: 0)
    }
    
    /// `EdgeInsets` with `.top` value.
    /// - Parameter insets: The insets value for `.top`.
    /// - Returns: `EdgeInsets`.
    public static func top(_ insets: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: insets, leading: 0, bottom: 0, trailing: 0)
    }
    
    /// `EdgeInsets` with `.bottom` value.
    /// - Parameter insets: The insets value for `.bottom`.
    /// - Returns: `EdgeInsets`.
    public static func bottom(_ insets: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: 0, bottom: insets, trailing: 0)
    }
    
    /// `EdgeInsets` with `.leading` value.
    /// - Parameter insets: The insets value for `.leading`.
    /// - Returns: `EdgeInsets`.
    public static func leading(_ insets: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: insets, bottom: 0, trailing: 0)
    }
    
    /// `EdgeInsets` with `.trailing` value.
    /// - Parameter insets: The insets value for `.trailing`.
    /// - Returns: `EdgeInsets`.
    public static func trailing(_ insets: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: insets)
    }
    
}

// MARK: - EdgeInsets + Size helpers

extension EdgeInsets {
    
    /// `EdgeInsets` with `.leading` and `.trailing` sizes.
    /// - Parameter insets: The insets sizes for `.leading` and `.trailing`.
    /// - Returns: `EdgeInsets`.
    public static func horizontal(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: size.spacing, bottom: 0, trailing: size.spacing)
    }
    
    /// `EdgeInsets` with `.top` and `.bottom` sizes.
    /// - Parameter insets: The insets sizes for `.top` and `.bottom`.
    /// - Returns: `EdgeInsets`.
    public static func vertical(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: size.spacing, leading: 0, bottom: size.spacing, trailing: 0)
    }
    
    /// `EdgeInsets` with `.top` size.
    /// - Parameter insets: The size value for `.top`.
    /// - Returns: `EdgeInsets`.
    public static func top(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: size.spacing, leading: 0, bottom: 0, trailing: 0)
    }
    
    /// `EdgeInsets` with `.bottom` size.
    /// - Parameter insets: The size value for `.bottom`.
    /// - Returns: `EdgeInsets`.
    public static func bottom(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: 0, bottom: size.spacing, trailing: 0)
    }
    
    /// `EdgeInsets` with `.leading` size.
    /// - Parameter insets: The size value for `.leading`.
    /// - Returns: `EdgeInsets`.
    public static func leading(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: size.spacing, bottom: 0, trailing: 0)
    }
    
    /// `EdgeInsets` with `.trailing` size.
    /// - Parameter insets: The size value for `.trailing`.
    /// - Returns: `EdgeInsets`.
    public static func trailing(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: size.spacing)
    }
    
}
