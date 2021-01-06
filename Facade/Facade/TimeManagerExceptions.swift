import Foundation

public enum TimeManagerExceptions: Error {
    case DateCannotBeFormattedProperly(massage: String = "ERROR: Date cannot be formatted properly. Check your input.")
}
