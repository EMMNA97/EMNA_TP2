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
    @IBOutlet weak var back_5: UIView!
    @IBOutlet weak var front_5: UIView!
    @IBOutlet weak var back_6: UIView!
    @IBOutlet weak var front_6: UIView!
    @IBOutlet weak var back_7: UIView!
    @IBOutlet weak var front_7: UIView!
    @IBOutlet weak var back_8: UIView!
    @IBOutlet weak var front_8: UIView!
    @IBOutlet weak var back_9: UIView!
    @IBOutlet weak var front_9: UIView!
    @IBOutlet weak var back_10: UIView!
    @IBOutlet weak var front_10: UIView!
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var front_12: UIView!
    
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    
    
    @IBOutlet weak var card1: UIView!
    @IBOutlet weak var card2: UIView!
    @IBOutlet weak var card3: UIView!
    @IBOutlet weak var card4: UIView!
    @IBOutlet weak var card5: UIView!
    @IBOutlet weak var card6: UIView!
    @IBOutlet weak var card7: UIView!
    @IBOutlet weak var card8: UIView!
    @IBOutlet weak var card9: UIView!
    @IBOutlet weak var card10: UIView!
    @IBOutlet weak var card11: UIView!
    @IBOutlet weak var card12: UIView!
    
    
    
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames: [String] = ["peppaPig2.png", "elephant2.png", "peppaPig2.png",
                                        "elephant2.png" , "zebra2.png", "zebra2.png", "cat2.png", "cat2.png", "rabbit2.png", "rabbit2.png","dog2.png", "dog2.png"  ]
    var arrayOfRandomAnimalNames = [String]()
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    var arrayChosenCards = [String]()
    var arrayChosenViews = [UIView]()
    
    //------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfImageViews = [ imgView1, imgView2, imgView3, imgView4, imgView5, imgView6, imgView7, imgView8, imgView9, imgView10, imgView11, imgView12 ]
        
        
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
    // fonction ayant toutes les propriétés des cartes
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
        case 4 :
            flipCard(from: front_5, to: back_5)
            arrayOfShowingBacks.append(back_5)
            arrayOfHidingFronts.append(front_5)
            arrayChosenCards.append(arrayOfRandomAnimalNames[4])
            arrayChosenViews.append(card5)
        case 5 :
            flipCard(from: front_6, to: back_6)
            arrayOfShowingBacks.append(back_6)
            arrayOfHidingFronts.append(front_6)
            arrayChosenCards.append(arrayOfRandomAnimalNames[5])
            arrayChosenViews.append(card6)
        case 6 :
            flipCard(from: front_7, to: back_7)
            arrayOfShowingBacks.append(back_7)
            arrayOfHidingFronts.append(front_7)
            arrayChosenCards.append(arrayOfRandomAnimalNames[6])
            arrayChosenViews.append(card7)
        case 7 :
            flipCard(from: front_8, to: back_8)
            arrayOfShowingBacks.append(back_8)
            arrayOfHidingFronts.append(front_8)
            arrayChosenCards.append(arrayOfRandomAnimalNames[7])
            arrayChosenViews.append(card8)
        case 8 :
            flipCard(from: front_9, to: back_9)
            arrayOfShowingBacks.append(back_9)
            arrayOfHidingFronts.append(front_9)
            arrayChosenCards.append(arrayOfRandomAnimalNames[8])
            arrayChosenViews.append(card9)
        case 9 :
            flipCard(from: front_10, to: back_10)
            arrayOfShowingBacks.append(back_10)
            arrayOfHidingFronts.append(front_10)
            arrayChosenCards.append(arrayOfRandomAnimalNames[9])
            arrayChosenViews.append(card10)
        case 10 :
            flipCard(from: front_11, to: back_11)
            arrayOfShowingBacks.append(back_11)
            arrayOfHidingFronts.append(front_11)
            arrayChosenCards.append(arrayOfRandomAnimalNames[10])
            arrayChosenViews.append(card11)
        case 11 :
            flipCard(from: front_12, to: back_12)
            arrayOfShowingBacks.append(back_12)
            arrayOfHidingFronts.append(front_12)
            arrayChosenCards.append(arrayOfRandomAnimalNames[11])
            arrayChosenViews.append(card12)
            
        default :
            break
            
        }
        verification()
    }
    //===========================
    // attribuer de maniére hiérarchique des cartes dans des tableaux
    func randomAnimals() {
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 0..<numberOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    
    //---------------------------
    // attribuer des images aux cartes
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
    // retourner les cartes
    @objc func reflip() {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    // enlevement des views si deux cartes sont similaires
    // possibilité de changer la fonction pour garder les deux photos similaires !!! (demander au prof )
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
    // recommencer le jeu a nouveau
    @IBAction func reset(_ sender: UIButton) {
        card1.isHidden = false
        card2.isHidden = false
        card3.isHidden = false
        card4.isHidden = false
        card5.isHidden = false
        card6.isHidden = false
        card7.isHidden = false
        card8.isHidden = false
        card9.isHidden = false
        card10.isHidden = false
        card11.isHidden = false
        card12.isHidden = false
        
        
        
        
        
        randomAnimals()
        
        setImagesToCard()
        
    }
    
}




















































