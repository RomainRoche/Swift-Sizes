//
//  File.swift
//  
//
//  Created by Romain Roche on 20/01/2022.
//

import SwiftUI

// MARK: - EdgeInsets helpers

extension EdgeInsets {
    
    /// `EdgeInsets` for all values.
    /// - Parameter insets: The insets value for all directions.
    /// - Returns: `EdgeInsets`.
    public static func all(_ insets: CGFloat) -> EdgeInsets {
        return EdgeInsets(top: insets, leading: insets, bottom: insets, trailing: insets)
    }
    
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
    
    /// `EdgeInsets` for all values.
    /// - Parameter size: The insets size for all directions.
    /// - Returns: `EdgeInsets`.
    public static func all(_ size: Size) -> EdgeInsets {
        return EdgeInsets(
            top: size.spacing,
            leading: size.spacing,
            bottom: size.spacing,
            trailing: size.spacing
        )
    }
    
    /// `EdgeInsets` with `.leading` and `.trailing` sizes.
    /// - Parameter size: The insets sizes for `.leading` and `.trailing`.
    /// - Returns: `EdgeInsets`.
    public static func horizontal(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: size.spacing, bottom: 0, trailing: size.spacing)
    }
    
    /// `EdgeInsets` with `.top` and `.bottom` sizes.
    /// - Parameter size: The insets sizes for `.top` and `.bottom`.
    /// - Returns: `EdgeInsets`.
    public static func vertical(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: size.spacing, leading: 0, bottom: size.spacing, trailing: 0)
    }
    
    /// `EdgeInsets` with `.top` size.
    /// - Parameter size: The size value for `.top`.
    /// - Returns: `EdgeInsets`.
    public static func top(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: size.spacing, leading: 0, bottom: 0, trailing: 0)
    }
    
    /// `EdgeInsets` with `.bottom` size.
    /// - Parameter size: The size value for `.bottom`.
    /// - Returns: `EdgeInsets`.
    public static func bottom(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: 0, bottom: size.spacing, trailing: 0)
    }
    
    /// `EdgeInsets` with `.leading` size.
    /// - Parameter size: The size value for `.leading`.
    /// - Returns: `EdgeInsets`.
    public static func leading(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: size.spacing, bottom: 0, trailing: 0)
    }
    
    /// `EdgeInsets` with `.trailing` size.
    /// - Parameter size: The size value for `.trailing`.
    /// - Returns: `EdgeInsets`.
    public static func trailing(_ size: Size) -> EdgeInsets {
        return EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: size.spacing)
    }
    
    /// Init with `Size` values.
    /// - Parameter top: The `top` value, `.zero` by default.
    /// - Parameter leading: The `leading` value, `.zero` by default.
    /// - Parameter bottom: The `bottom` value, `.zero` by default.
    /// - Parameter trailing: The `trailing` value, `.zero` by default.
    public init(
        top: Size = .zero,
        leading: Size = .zero,
        bottom: Size = .zero,
        trailing: Size = .zero
    ) {
        self.init(
            top: top.spacing,
            leading: leading.spacing,
            bottom: bottom.spacing,
            trailing: trailing.spacing
        )
    }
    
}
