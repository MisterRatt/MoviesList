//
//  ListOfMoviesRouter.swift
//  RoadTrip
//
//  Created by PC205 on 17/3/23.
//

import Foundation
import UIKit

class ListOfMoviesRouter{
    func showListOfMovies(window: UIWindow?) {
        
        let interactor = ListOfMoviesInteractor()
        let presenter = ListOfMoviesPresenter(listOfMoviesInteractor: interactor)
        
        let view = ListOfMoviesView(presenter: presenter)
        presenter.ui = view
        //view.presenter = presenter
        
        window?.rootViewController = view
        window?.makeKeyAndVisible()
    }
}
