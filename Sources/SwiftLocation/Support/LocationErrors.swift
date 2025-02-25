//
//  SwiftLocation
//  Async/Await Wrapper for CoreLocation
//
//  Copyright (c) 2023 Daniele Margutti (hello@danielemargutti.com).
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

/// Throwable errors
public enum LocationErrors: LocalizedError {

    /// Info.plist authorization are not correctly defined.
    case plistNotConfigured

    /// System location services are disabled by the user or not available.
    case locationServicesDisabled

    /// You must require location authorization from the user before executing the operation.
    case authorizationRequired

    /// Not authorized by the user.
    case notAuthorized

    /// Operation timeout.
    case timeout

    /// Cancelled before operation could complete.
    case cancelled
    
    /// LocationManager did not return any location
    case noLocation

    public var errorDescription: String? {
        switch self {
        case .plistNotConfigured:
            return "Missing authorization into Info.plist"
        case .locationServicesDisabled:
            return "Location services disabled/not available"
        case .authorizationRequired:
            return "Location authorization not requested yet"
        case .notAuthorized:
            return "Not Authorized"
        case .timeout:
            return "Timeout"
        case .cancelled:
            return "Cancelled"
        case .noLocation:
            return "No location available"
        }
    }

}
