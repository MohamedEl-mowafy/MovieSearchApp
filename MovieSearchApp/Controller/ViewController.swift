//
//  ViewController.swift
//  MovieSearchApp
//
//  Created by Mohamed Elmowafy on 28/01/2022.
//

import UIKit
//UI
// Network Request
//tap a cell to see info about the movie
// custom cell

class ViewController: UIViewController {
    @IBOutlet var table: UITableView!
    @IBOutlet var field: UITextField!
    var movies = [Movie]()
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        field.delegate = self
    }


}
//MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchMovies()
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        field.resignFirstResponder()
    }
    func searchMovies() {
        guard let text = field.text, !text.isEmpty else {
            return
        }
        let moviesUrl = URL(string: "https://www.omdbapi.com/?apikey=3aea79ac&s=fast%20and&type=movie")
        let session = URLSession.shared
        let dataTask = session.dataTask(with: moviesUrl!) { (data,response,error) in
            guard let data = data , error == nil else {
                return
            }
            //Convert
            
            
        }
        dataTask.resume()
            
    }
}
//MARK: - UITableViewDelegate&DataSource
extension ViewController:UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //show movies Details
    }
    
    
}
