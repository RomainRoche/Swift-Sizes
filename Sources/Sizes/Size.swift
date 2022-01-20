//
//  Size.swift
//  
//
//  Created by Romain Roche on 20/01/2022.
//

import CoreGraphics

// MARK: - Size enum

public enum Size {
    
    // MARK: - private
    
    /// The power value.
    private var power: Int {
        switch self {
        case .zero, .custom(_): return -1
        case .xs: return 0
        case .s: return 1
        case .m: return 2
        case .l: return 3
        case .xl: return 4
        case .xxl: return 5
        }
    }
    
    // MARK: - public
    
    /// The spacing multiplier to use.
    public static var spacing: Int = 5
    
    /// A zero px spacing.
    case zero
    /// A `TieSize.spaging * 2^0` px spacing.
    case xs
    /// A `TieSize.spaging * 2^1` px spacing.
    case s
    /// A `TieSize.spaging * 2^2` px spacing.
    case m
    /// A `TieSize.spaging * 2^3` px spacing.
    case l
    /// A `TieSize.spaging * 2^4` px spacing.
    case xl
    /// A `TieSize.spaging * 2^5` px spacing.
    case xxl
    /// A custom size.
    case custom(CGFloat)
    
    /// The `CGFloat` spacing value.
    public var spacing: CGFloat {
        if case let .custom(size) = self {
            return size
        }
        if case .zero = self {
            return 0
        }
        return CGFloat(Self.spacing) * pow(2, CGFloat(self.power))
    }
    
}

// MARK: - Size: operations

public extension Size {
    /// Sum sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: A `.custom` size.
    static func + (lhs: Size, rhs: Size) -> Size {
        return .custom(lhs.spacing + rhs.spacing)
    }
    
    /// Substract sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: A `.custom` size.
    static func - (lhs: Size, rhs: Size) -> Size {
        return .custom(lhs.spacing - rhs.spacing)
    }
    
    /// Multiply sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: A `.custom` size.
    static func * (lhs: Size, rhs: Size) -> Size {
        return .custom(lhs.spacing * rhs.spacing)
    }
    
    /// Divide sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: A `.custom` size.
    static func / (lhs: Size, rhs: Size) -> Size {
        guard rhs.spacing != 0 else { return .custom(lhs.spacing) }
        return .custom(lhs.spacing / rhs.spacing)
    }
}

// MARK: - Equatable and Comparable

extension Size: Equatable, Comparable {
    
    /// Equal sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: `true` if the sizes spacings are equal.
    public static func == (lhs: Size, rhs: Size) -> Bool {
        return lhs.spacing == rhs.spacing
    }
    
    /// Compare sizes.
    /// - Parameter lhs: The 1st size.
    /// - Parameter rhs: The 2nd size.
    /// - Returns: `true` if `lhs.spacing` is lower than `rhs.spacing`.
    public static func < (lhs: Size, rhs: Size) -> Bool {
        return lhs.spacing < rhs.spacing
    }
    
}
