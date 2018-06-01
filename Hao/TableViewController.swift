//
//  TableViewController.swift
//  Hao
//
//  Created by epita on 04/04/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var jjjj: UITableView!
    
    var bookarray = [Books]() // size indefinite
    var book:Books?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let Book = Books(Author: "by hao", Title: "The First Shape", Year: "2018", Gallery: "Image", Details: "A White Circle on Black")
        let Book2 = Books(Author: "by hao", Title: "The Second Shape",Year: "2018", Gallery: "Image2", Details: "A Black Circle on Grey")
        let Book3 = Books(Author: "by hao", Title: "The Third Shape",Year: "2018", Gallery: "Image3", Details: "A White Line on Dark Blue")
        let Book4 = Books(Author: "by hao", Title: "The Fourth Shape",Year: "2018", Gallery: "Image4", Details: "A Dark triangle on Red")
        let Book5 = Books(Author: "by hao", Title: "The Fifth Shape",Year: "2018", Gallery: "Image5", Details: "16 Squares")
        let Book6 = Books(Author: "by hao", Title: "The Sixth Shape",Year: "2018", Gallery: "Image6", Details: "A Monochromed Square")
        let Book7 = Books(Author: "by hao", Title: "The Seventh Shape",Year: "2018", Gallery: "Image7", Details: "A Color Displacement")
        bookarray.insert(Book, at: 0)
        bookarray.insert(Book2, at: 1)
        bookarray.insert(Book3, at: 2)
        bookarray.insert(Book4, at: 3)
        bookarray.insert(Book5, at: 4)
        bookarray.insert(Book6, at: 5)
        bookarray.insert(Book7, at: 6)
        print(bookarray)        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bookarray.count
    }

    // here is used to list items in table
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! booksTableViewCell
        cell.Gallery.alpha = 0.87
        cell.Title.text = bookarray[indexPath.row].Title
        cell.Author.text = bookarray[indexPath.row].Author
        cell.Year.text = bookarray[indexPath.row].Year
        
        let linktopass = bookarray[indexPath.row].Details
        
        if (bookarray[indexPath.row].Title == "The First Shape") {
            cell.Gallery.image = UIImage(named: "Image")
        }
        if (bookarray[indexPath.row].Title == "The Second Shape") {
            cell.Gallery.image = UIImage(named: "Image2")
        }
        if (bookarray[indexPath.row].Title == "The Third Shape") {
            cell.Gallery.image = UIImage(named: "Image3")
        }
        if (bookarray[indexPath.row].Title == "The Fourth Shape") {
            cell.Gallery.image = UIImage(named: "Image4")
        }
        if (bookarray[indexPath.row].Title == "The Fifth Shape") {
            cell.Gallery.image = UIImage(named: "Image5")
        }
        if (bookarray[indexPath.row].Title == "The Sixth Shape") {
            cell.Gallery.image = UIImage(named: "Image6")
        }
        if (bookarray[indexPath.row].Title == "The Seventh Shape") {
            cell.Gallery.image = UIImage(named: "Image7")
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        book = bookarray[indexPath.row]
        self.performSegue(withIdentifier: "detail", sender: tableView)
    }
    
    
    // here is to segue detail content of the array to detailed view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let detailVC = segue.destination as? ViewController
        detailVC?.detailBook = book
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
     */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // In a storyboard-based application, you will often want to do a little preparation before navigation

}
