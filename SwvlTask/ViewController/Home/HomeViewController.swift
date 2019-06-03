//

//  ViewController.swift
//  SwvlTask
//
//  Created by mina  on 6/2/19.
//  Copyright © 2019 minamagdy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var moviesListTableView: UITableView!
    @IBOutlet weak var moviesSearchBar: UISearchBar!
    var fileReader: SWVLFileReader!
    var viewModel: HomeViewModel!
    var movies: [Movie]? {
        didSet {
            print(movies?.count)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, t
        getMovies()
    }
    
    func getMovies() {
        fileReader = SWVLFileReader(fileName: "all_movies", type: "json")
        viewModel = HomeViewModel(fileReader: fileReader)
        viewModel.getMovies(onSuccess: { [weak self]movies in
            self?.movies = movies
        }) { error in
            print(error.localizedDescription)
        }
        
    }

    
}

