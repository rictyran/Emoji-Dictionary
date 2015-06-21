//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Richard Tyran on 6/19/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {

    @IBOutlet var chosenEmoji: UILabel!
    
    @IBOutlet var emojiDefinition: UILabel!
    
    var emoji = "💀"
    var emojiDef = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.chosenEmoji.text = self.emoji
        self.emojiDefinition.text = self.emojiDef
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
