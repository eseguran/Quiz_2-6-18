//
//  ViewController.swift
//  quiz2-6-18
//
//  Created by Eddy Segura on 6/2/18.
//  Copyright © 2018 Eddy Segura. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
   
 
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var stateSwitch: UISwitch!
    @IBOutlet weak var textField: UILabel!
   
    @IBAction func buttonClicked(_ sender: Any) {
        if stateSwitch.isOn {
            textField.text = "The Switch is Off"
            stateSwitch.setOn(false, animated:true)
        } else {
            textField.text = "The Switch is On"
            stateSwitch.setOn(true, animated:true)
        }
    }
    
   
  
 
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        
        label.text = "\(currentValue)"
    }
    
    @IBOutlet weak var chooser: UISegmentedControl!
    
    
    @IBOutlet weak var labelChooser: UILabel!
    @IBAction func chooserValueChanged(_ sender: Any) {
        var currentValue = "Uno"
        if chooser.selectedSegmentIndex == 0 {currentValue = "Uno"}else {currentValue = "Dos"}
        labelChooser.text = "\(currentValue)"
    }
    
    @IBOutlet weak var imagen: UIImageView!
    @IBAction func botontouch(_ sender: Any) {
     
        if imagen.isHidden == true {
        imagen.isHidden = false
               boton.setTitle("Ocultar", for: .normal)
        }else {
            imagen.isHidden = true
            boton.setTitle("Mostrar", for: .normal)
            
        }
     
    }
    @IBOutlet weak var boton: UIButton!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // stateSwitch.addTarget(self, action: #selector(stateChanged), for: UIControlEvents.valueChanged)
     
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            textField.text = "The Switch is On"
        } else {
            textField.text = "The Switch is Off"
        }
    }
    
}



   
