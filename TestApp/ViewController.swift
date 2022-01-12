//
//  ViewController.swift
//  TestApp
//
//  Created by John Reis on 10/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonAction: UIButton!

    @IBOutlet weak var buttonTableViewController: UIButton!

    @IBOutlet weak var buttonCollectionViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.configureActions()
    }

    func configureActions() {

        self.buttonAction.addTarget(self, action: #selector(openUIViewController(_:)), for: .touchUpInside)
        self.buttonTableViewController.addTarget(self, action: #selector(openUIViewController(_:)), for: .touchUpInside)
        self.buttonCollectionViewController.addTarget(self, action: #selector(openUIViewController(_:)), for: .touchUpInside)
    }


}

@objc private extension ViewController {

    func openUIViewController(_ sender: UIButton) {

        let identifier: String

        switch sender {
        case self.buttonAction:
            identifier = "DetailViewController"
        case self.buttonTableViewController:
            identifier = "TableViewController"
        case self.buttonCollectionViewController:
            identifier = "CollectionViewController"
        default:
            fatalError("Couldn't find sender!")
        }

        guard let viewController = storyboard?.instantiateViewController(withIdentifier: identifier) else {
            return
        }

        viewController.modalPresentationStyle = .pageSheet
        viewController.modalPresentationCapturesStatusBarAppearance = true

        let navigationController = UINavigationController(rootViewController: viewController)

        self.navigationController?.present(navigationController, animated: true, completion: nil)
    }


}

