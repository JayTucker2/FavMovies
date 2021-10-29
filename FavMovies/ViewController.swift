//
//  ViewController.swift
//  FavMovies
// didselect
//  Created by JAYLAN TUCKER on 10/19/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableOutlet: UITableView!
    var movies = ["Movie 1", "Movie 2", "Movie 3", "Movie 4", "Movie 5", "Movie 6", "Movie 7", "Movie 8", "Movie 9", "Movie 10", "Movie 11", "Movie 12"]
    var movies2 : [Movie] = []
    var row : Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        movies2.append(Movie.init(name: "Movie 1", rate: 70.0, desc: "NYT: Cool Beans!"))
        movies2.append(Movie.init(name: "Movie 2", rate: 69.0, desc: "Washington Post: Whats cooler than being cool? ICE COLD"))
        movies2.append(Movie.init(name: "Movie 3", rate: 10.0, desc: "Actual Dogwater"))
        tableOutlet.delegate = self
        tableOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = String(movies[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        row = indexPath.row
        performSegue(withIdentifier: "toScreen2", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondViewController
        var selectedMovie = movies2[row]
        nvc.inc = selectedMovie
    }
}

