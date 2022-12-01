//
//  ViewController.swift
//  AutoLayout P1
//
//  Created by Admin on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        settingUpImageView()
        settingTextField()
        
    }
    
    func settingUpImageView(){
        
        let imageView = UIImageView(image: UIImage(imageLiteralResourceName: "home"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        
        print("image set successfully")
    }
    
    func settingTextField(){
        let textField: UITextField = {
            let noteTitle = UITextField()
            noteTitle.placeholder = "Enter here"
            noteTitle.textAlignment = .left
            noteTitle.translatesAutoresizingMaskIntoConstraints = false
            return noteTitle
        }()
        
        view.addSubview(textField)
        textField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        textField.becomeFirstResponder()
        
    }


}

