//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Alfonso Torres on 1/14/18.
//  Copyright © 2018 Alfonso Torres. All rights reserved.
//

import UIKit
//Library below will be used to used Audio Recorder
import AVFoundation

class RecordSoundsViewController: UIViewController,AVAudioRecorderDelegate {
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    @IBAction func recordAudio(_ sender: Any) {
//        recordLabel.text = "Recording in Progress"
//        stopRecordingButton.isEnabled = true
//        recordButton.isEnabled = false
        enableButtons(rButton: false, sButton: true, rLabel: "Recording in Progress")
        
        //This will begin the recording
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    @IBAction func stopRecording(_ sender: Any) {
//        recordButton.isEnabled = true
//        stopRecordingButton.isEnabled = false
//        recordLabel.text = "Tap to Record"
        enableButtons(rButton: true, sButton: false, rLabel: "Tap to Record")
        
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag{
            performSegue(withIdentifier: "stopRecording", sender: audioRecorder.url)
        }else{
            print("Recording was not successful")
        }
    }
    
    func enableButtons(rButton: Bool, sButton: Bool, rLabel: String){
        recordButton.isEnabled = rButton
        stopRecordingButton.isEnabled = sButton
        recordLabel.text = rLabel
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "stopRecording"{
            let playSoundsVC = segue.destination as! PlaySoundsViewController
            let recordedAudioURL = sender as! URL
            playSoundsVC.recordedAudioURL = recordedAudioURL
        }
    }
}

