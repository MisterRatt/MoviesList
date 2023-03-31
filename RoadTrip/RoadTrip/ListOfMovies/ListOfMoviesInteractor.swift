//
//  ListOfMoviesInteractor.swift
//  RoadTrip
//
//  Created by PC205 on 17/3/23.
//

import Foundation

protocol ListOfMoviesInteractable: AnyObject {
    
    func getListOfMovies() async -> PopularMovieResponseEntity
    
}

class ListOfMoviesInteractor: ListOfMoviesInteractable {
    func getListOfMovies() async -> PopularMovieResponseEntity {
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=8fcbfa0e1cfcc935913216286a95b943")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
    }
}

class ListOfMoviesInteractorMock: ListOfMoviesInteractable{
    func getListOfMovies() async -> PopularMovieResponseEntity {
        return PopularMovieResponseEntity(results: [
            .init(id: 0, title: "CasaCampo 5: Honor entre fumetas", overview: "El inicio del arco final...", imageURL: "", votes: 10),
            .init(id: 1, title: "CasaCampo 4: El canelo dorado", overview: "Avatxagoras", imageURL: "", votes: 10),
            .init(id: 2, title: "CasaCampo 2: Lionhart strikes back", overview: "El inicio del arco final...", imageURL: "", votes: 10),
            .init(id: 3, title: "CC (CasaCampo 6)", overview: "El inicio del arco final...", imageURL: "", votes: 10),
            .init(id: 4, title: "CasaCampo Reloaded", overview: "El inicio del arco final...", imageURL: "", votes: 10)])
    }
    
    
}
