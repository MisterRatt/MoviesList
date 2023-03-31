//
//  PopularMovieResponseEntity.swift
//  RoadTrip
//
//  Created by PC205 on 17/3/23.
//

import Foundation

struct PopularMovieResponseEntity: Decodable {
    
    let results: [PopularMovieEntity]
    
}
