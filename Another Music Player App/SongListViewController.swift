//
//  SongListViewController.swift
//  Another Music Player App
//
//  Created by Thitiwat on 4/5/2560 BE.
//  Copyright © 2560 thitiwat. All rights reserved.
//

import UIKit

class SongListViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var songTable: UITableView!
    
    var songlist:[String] = ["BlowYourMind","ColdWater","ComeToMe","Hello","KeepitMello","LoveOnMe","OneNightOnly","ThinkingAboutYou","Wants","WhereThemGirlsAt"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func logout(_ sender: Any) {
        let mainStory: UIStoryboard = UIStoryboard(name:"Main", bundle: nil)
        
        let nextViewController = mainStory.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        self.present(nextViewController, animated: true, completion: nil)
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! songTableViewCell
        
        cell.song.text = "\(indexPath.row+1).  \(songlist[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "PlayMusicViewController") as! PlayMusicViewController
        myVC.passData = songlist[indexPath.row]
        
        
        
        self.present(myVC, animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
