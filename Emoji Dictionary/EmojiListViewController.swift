//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Richard Tyran on 6/19/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var emojis = ["😀","😈","😡","🐰","🎃","🍒","🏈","🎱","✈️","📺","⌚️","💩","🐔","🎹","🎾","🎓","🇮🇹","💾"]
    var emoji = "💀"
    var emojiDefs = ["Grinning Face","Smiling Face with Horns","Pouting Face","Rabbit Face","Jack-O-Lantern","Cherries","American Football","Billiards","Airplane","Television","Watch","Pile of Poo","Chicken","Musical Keyboard","Tennis Ball","Graduation Cap","Italian Flag","Floppy Disk"]
    var emojiDef = ""
    
    override func viewDidLoad() {
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
 
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
//        cell.backgroundColor = UIColor.redColor()
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       self.emoji = self.emojis[indexPath.row]
        self.emojiDef = self.emojiDefs[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as EmojiDetailViewController
        detailViewController.emoji = self.emoji
        detailViewController.emojiDef = self.emojiDef
    }
    
}
