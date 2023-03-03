//
//  AnimalSoundViewController.swift
//  MobileDevAssignment2
//
//  Created by Emmanuel Ozioma on 19/05/2022.
//
import AVFoundation
import UIKit

class AnimalSoundViewController : UIViewController{
    var audioPlayer:AVAudioPlayer?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var audioImgView: UIImageView!
    
    @IBOutlet weak var dogImgView: UIImageView!
    @IBOutlet weak var catImgView: UIImageView!
    @IBOutlet weak var goatImgView: UIImageView!
    @IBOutlet weak var foxImgView: UIImageView!
    @IBOutlet weak var frogImgView: UIImageView!
    @IBOutlet weak var donkeyImgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // tap gesture recognizer for the image view
        
        let t1 = UITapGestureRecognizer(
            target: self, action: #selector(AnimalSoundViewController.audioImgTapGesture(_sender:))
        )
        
        let t2 = UITapGestureRecognizer(
            target: self, action: #selector(AnimalSoundViewController.dogImgTapGesture(_sender:))
        )
        
        let t3 = UITapGestureRecognizer(
            target: self, action: #selector(AnimalSoundViewController.otherImgTapGesture(_sender:))
        )
        
        
        audioImgView.isUserInteractionEnabled = true; // enable interaction
        audioImgView.addGestureRecognizer(t1)
        
        dogImgView.isUserInteractionEnabled = true;
        dogImgView.addGestureRecognizer(t2)
        
        catImgView.isUserInteractionEnabled = true;
        catImgView.addGestureRecognizer(t3)
        
        goatImgView.isUserInteractionEnabled = true;
        goatImgView.addGestureRecognizer(t3)
        
        frogImgView.isUserInteractionEnabled = true;
        frogImgView.addGestureRecognizer(t3)
        
        foxImgView.isUserInteractionEnabled = true;
        foxImgView.addGestureRecognizer(t3)
        
        donkeyImgView.isUserInteractionEnabled = true;
        donkeyImgView.addGestureRecognizer(t3)
        
        
        
        
    }
    
    @objc func audioImgTapGesture(_sender: AnyObject){
        print("Play audio")
        let pathToSound = Bundle.main.path(forResource: "dog_bark", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }catch{
            print(error)
        }
    }
    
    @objc func dogImgTapGesture(_sender: AnyObject){
        print("Correct")
        resultLabel.text = "Correct"
    }
    
    @objc func otherImgTapGesture(_sender: AnyObject){
        print("Wrong")
        resultLabel.text = "Wrong"
    }
    
    
    
}
