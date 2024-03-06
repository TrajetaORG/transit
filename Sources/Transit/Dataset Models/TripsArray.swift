//
//  File.swift
//
//
//  Created by Leandro Silva on 29/02/2024.
//

import Foundation
import CoreLocation

public class TripsArray {
    public var trip_id: TransitID
    public var stops: [StopTimeWithStopInfo]?
    public var route: Route
    public var agency: Agency
    public var service_id: TransitID
    public var trip_headsign: String
    public var trip_short_name: String
    public var direction_id: Direction
    public var block_id: String
    public var shape_id: String
    public var wheelchair_accessible: WheelChair
    public var bikes_allowed: Bikes
    
    public init(trip_id: TransitID,
         route: Route,
         service_id: TransitID,
                agency:Agency,
         trip_headsign: String,
         trip_short_name: String,
         direction_id: Direction,
         block_id: String,
         shape_id: String,
         wheelchair_accessible: WheelChair,
         bikes_allowed: Bikes) {
        self.trip_id = trip_id
        self.route = route
        self.service_id = service_id
        self.agency = agency
        self.trip_headsign = trip_headsign
        self.trip_short_name = trip_short_name
        self.direction_id = direction_id
        self.block_id = block_id
        self.shape_id = shape_id
        self.wheelchair_accessible = wheelchair_accessible
        self.bikes_allowed = bikes_allowed
    }

    // Convenience initializer to set stops later
    public convenience init(trip_id: TransitID,
         route: Route,
         service_id: TransitID,
                            agency: Agency,
         trip_headsign: String,
         trip_short_name: String,
         direction_id: Direction,
         block_id: String,
         shape_id: String,
         wheelchair_accessible: WheelChair,
         bikes_allowed: Bikes,
         stops: [StopTimeWithStopInfo]) {
        self.init(trip_id: trip_id,
                  route: route,
                  service_id: service_id,
                  agency: agency,
                  trip_headsign: trip_headsign,
                  trip_short_name: trip_short_name,
                  direction_id: direction_id,
                  block_id: block_id,
                  shape_id: shape_id,
                  wheelchair_accessible: wheelchair_accessible,
                  bikes_allowed: bikes_allowed)
        self.stops = stops
    }

    
    public init() {
        self.trip_id = ""
        self.stops = []
        self.route = Route()
        self.service_id = ""
        self.trip_headsign = ""
        self.agency = Agency()
        self.trip_short_name = ""
        self.direction_id = Direction.inbound
        self.block_id = ""
        self.shape_id = ""
        self.wheelchair_accessible = WheelChair.noInformation
        self.bikes_allowed = Bikes.noInformation
    }
    
}
public class StopTimeWithStopInfo {
    public var id = UUID()
    public var tripID: TransitID = ""
    public var arrival: String?
    public var departure: String?
    public var stopID: TransitID = ""
    public var stopSequenceNumber: UInt = 0
    public var stopHeadingSign: String?
    public var pickupType: Int?
    public var dropOffType: Int?
    public var continuousPickup: Int?
    public var continuousDropOff: Int?
    public var distanceTraveledForShape: Double?
    public var timePointType: Int?
    public var nonstandard: String? = nil
    public var stop: Stop?
    
    public init(id: UUID = UUID(),
         tripID: TransitID,
         arrival: String? = "",
         departure: String? = "",
         stopID: TransitID,
         stopSequenceNumber: UInt,
         stopHeadingSign: String? = nil,
         pickupType: Int? = nil,
         dropOffType: Int? = nil,
         continuousPickup: Int? = nil,
         continuousDropOff: Int? = nil,
         distanceTraveledForShape: Double? = nil,
         timePointType: Int? = nil,
         nonstandard: String? = nil,
                stop: Stop?) {
        self.id = id
        self.tripID = tripID
        self.arrival = arrival
        self.departure = departure
        self.stopID = stopID
        self.stopSequenceNumber = stopSequenceNumber
        self.stopHeadingSign = stopHeadingSign
        self.pickupType = pickupType
        self.dropOffType = dropOffType
        self.continuousPickup = continuousPickup
        self.continuousDropOff = continuousDropOff
        self.distanceTraveledForShape = distanceTraveledForShape
        self.timePointType = timePointType
        self.nonstandard = nonstandard
        self.stop = stop
    }
}

