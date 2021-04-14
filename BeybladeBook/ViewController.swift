//
//  ViewController.swift
//  BeybladeBook
//
//  Created by UMUT GUDUL on 14.04.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var myBeyblade = [Beyblade]()
    var chosenBeyblade : Beyblade?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        // Beyblade objects
        let takao = Beyblade(beybladeName: "Kinomiya Takao", beybladeSacredBeast: "Mavi Ejderha", beybladeImage: UIImage(named: "kinomiya takao")!)
        let kai = Beyblade(beybladeName: "Kai Hiwatari", beybladeSacredBeast: "Kırmızı Anka Kuşu", beybladeImage: UIImage(named: "kai")!)
        let rei = Beyblade(beybladeName: "Rei Kon", beybladeSacredBeast: "Beyaz Kaplan", beybladeImage: UIImage(named: "rei kon")!)
        let max = Beyblade(beybladeName: "Max Mizuhara", beybladeSacredBeast: "Kara Kaplumbağa", beybladeImage: UIImage(named: "max mizuhara")!)
        myBeyblade.append(takao)
        myBeyblade.append(kai)
        myBeyblade.append(rei)
        myBeyblade.append(max)
        
        
        
        
        
        
        
        
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBeyblade.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myBeyblade[indexPath.row].beyblade
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenBeyblade = myBeyblade[indexPath.row]
       
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedBeyblade = chosenBeyblade
        }
    }
    


}

