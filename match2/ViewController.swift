//===============================

import UIKit
//===================================
class ViewController: UIViewController {
    //------------------------------
    @IBOutlet weak var back_1: UIView!
    @IBOutlet weak var front_1: UIView!
    @IBOutlet weak var back_2: UIView!
    @IBOutlet weak var front_2: UIView!
    @IBOutlet weak var back_3: UIView!
    @IBOutlet weak var front_3: UIView!
    @IBOutlet weak var back_4: UIView!
    @IBOutlet weak var front_4: UIView!
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    
    @IBOutlet weak var card1: UIView!
    @IBOutlet weak var card2: UIView!
    @IBOutlet weak var card3: UIView!
    @IBOutlet weak var card4: UIView!
    
    
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames: [String]!
    var arrayOfRandomAnimalNames = [String]()
    
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    
    var arrayChosenCards = [String]()
    var arrayChosenViews = [UIView]()
    
    //------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfImageViews = [ imgView1, imgView2, imgView3, imgView4 ]
        arrayOfAnimalNames = ["panda.png", "penguin.png", "panda.png",
                              "penguin.png"]
        randomAnimals()
        setImagesToCard()
    }
    
    //---------------------------
    
    func flipCard(from: UIView, to: UIView) {
        
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions,animations: { from.isHidden = true })
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: { to.isHidden = false })
    }
    
    
    //---------------------------
    @IBAction func showCard(_ sender: UIButton) {
        
        if arrayOfHidingFronts.count == 2 {
            return
        }
        
        switch sender.tag {
        case 0 :
            flipCard(from: front_1, to: back_1)
            arrayOfShowingBacks.append(back_1)
            arrayOfHidingFronts.append(front_1)
            arrayChosenCards.append(arrayOfRandomAnimalNames[0])
            arrayChosenViews.append(card1)
        case 1 :
            flipCard(from: front_2, to: back_2)
            arrayOfShowingBacks.append(back_2)
            arrayOfHidingFronts.append(front_2)
            arrayChosenCards.append(arrayOfRandomAnimalNames[1])
            arrayChosenViews.append(card2)
        case 2 :
            flipCard(from: front_3, to: back_3)
            arrayOfShowingBacks.append(back_3)
            arrayOfHidingFronts.append(front_3)
            arrayChosenCards.append(arrayOfRandomAnimalNames[2])
            arrayChosenViews.append(card3)
        case 3 :
            flipCard(from: front_4, to: back_4)
            arrayOfShowingBacks.append(back_4)
            arrayOfHidingFronts.append(front_4)
            arrayChosenCards.append(arrayOfRandomAnimalNames[3])
            arrayChosenViews.append(card4)
            
        default :
            break
            
        }
        verification()
    }
    //===========================
    
    func randomAnimals() {
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 0..<numberOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    
    //---------------------------
    func setImagesToCard() {
        var number = 0
        for imgView in arrayOfImageViews {
            imgView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }
    
    
    //---------------------------
    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2, target: self, selector: (#selector(reflip)), userInfo: nil, repeats: false)
        }
    }
    
    //================================
    @objc func reflip() {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    
    func verification() {
        if arrayChosenCards.count == 2 {
            if arrayChosenCards [0] == arrayChosenCards [1] {
                Timer.scheduledTimer(timeInterval: 2, target: self, selector: (#selector(hideCards)), userInfo: nil, repeats: false)
            } else {
                arrayChosenViews = []
            }
            arrayChosenCards = []
        }
        resetCards()
    }
    
    func hideCards() {
        arrayChosenViews[0].isHidden = true
        arrayChosenViews[1].isHidden = true
        arrayChosenViews = []
    }
    //====================
    @IBAction func reset(_ sender: UIButton) {
        card1.isHidden = false
        card2.isHidden = false
        card3.isHidden = false
        card4.isHidden = false
        arrayOfAnimalNames = ["panda.png", "penguin.png", "panda.png",
                              "penguin.png"]
        
        arrayOfRandomAnimalNames = []
        
        randomAnimals()
        
        setImagesToCard()
        
    }
    
}




















































