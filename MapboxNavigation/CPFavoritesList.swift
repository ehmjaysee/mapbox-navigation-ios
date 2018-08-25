public enum CPFavoritesList {
    
    enum POI: RawRepresentable {
        typealias RawValue = String
        case mapboxSF, timesSquare
        
        var subTitle: String {
            switch self {
            case .mapboxSF:
                return "Office Location"
            case .timesSquare:
                return "Downtown Attractions"
            }
        }
        
        var location: CLLocation {
            switch self {
            case .mapboxSF:
                return CLLocation(latitude: 37.7820776, longitude: -122.4155262)
            case .timesSquare:
                return CLLocation(latitude: 40.758899, longitude: -73.9873197)
            }
        }
        
        var rawValue: String {
            switch self {
            case .mapboxSF:
                return "Mapbox SF"
            case .timesSquare:
                return "Times Square"
            }
        }
        
        init?(rawValue: String) {
            let value = rawValue.lowercased()
            switch value {
            case "mapbox sf":
                self = .mapboxSF
            case "times square":
                self = .timesSquare
            default:
                return nil
            }
        }
    }
}
