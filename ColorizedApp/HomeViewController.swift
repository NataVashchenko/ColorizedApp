//
//  HomeViewController.swift
//  ColorizedApp
//
//  Created by Наталия on 12.10.2022.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        guard let source = seg.source as? ViewController else { return }
        view.backgroundColor = source.colorView.backgroundColor
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ViewController else { return }
        destination.initialColor = view.backgroundColor!
    }
    

}
