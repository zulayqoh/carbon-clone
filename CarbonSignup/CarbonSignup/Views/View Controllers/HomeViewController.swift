//
//  ViewController.swift
//  CarbonSignup
//
//  Created by Decagon on 23/08/2021.
//

import UIKit
import Lottie

  // MARK:- HOME VIEWCONTROLLER CLASS

class HomeViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
 
  let cellIdentifier = "cell"
  
  // MARK:- COLLECTIONVIEW
  
    lazy var collectionView: UICollectionView = {
    let flowLayout = UICollectionViewFlowLayout()
    flowLayout.minimumLineSpacing = 0
    flowLayout.scrollDirection = .horizontal
    let collectionViewInstance = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
    collectionViewInstance.backgroundColor = .white
    collectionViewInstance.dataSource = self
    collectionViewInstance.delegate = self
    collectionViewInstance.isPagingEnabled = true
    return collectionViewInstance
  }()
  
  // MARK:- SKIP BUTTON
  
  let skipButton: UIButton = {
    let skip = UIButton()
    skip.setTitle("Skip", for: .normal)
    skip.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
    return skip
  }()
  
  // MARK:- SIGN UP BUTTON
  
  let signUpButton: UIButton = {
    let sign = UIButton()
    sign.setTitle("Sign Up", for: .normal)
    sign.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
    return sign
  }()
  
  // MARK:- LOGO IMAGEVIEW
  
  let logoImageView: UIImageView = {
    let iv = UIImageView()
    iv.contentMode = .scaleAspectFill
    iv.backgroundColor = .yellow
    iv.translatesAutoresizingMaskIntoConstraints = false
    iv.image = UIImage(named: "Carbon")
    return iv
  }()
  
  // MARK:- SETUP BUTTON
  
  let setUpButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
    button.setTitle("Set up new account", for: .normal)
    button.layer.cornerRadius = 4
    button.addTarget(self, action: #selector(didTapSkipButton), for: .touchUpInside)
    button.setTitleColor(.white, for: .normal)
    return button
  }()
  
  // MARK:- PAGE MODEL
  
  let pages: [PageModel] = {
    
    let firstPage = PageModel(title: "Trusted by millions", imageName: "Card", message: "With Carbon's market-leading service already used by millions of people just like you, you're in very good company.")
    
    let secondPage = PageModel(title: "Stay on top of your finances. Anytime. Anywhere" , imageName: "People", message: "Carbon makes financial services faster, cheaper and more convenient. You can access the app 24/7, wherever you are.")
    
    let thirdPage = PageModel(title: "Go beyond banking", imageName: "Connect", message: "Welcome to the future. Carbon is your passport to world-class financial services, built just for you.")
    
    return [firstPage, secondPage, thirdPage]
  }()
  
  
  var pageControl: Int = 0
  
  // MARK:- VIEWDIDLOAD
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    registerCells()      // MARK:- REGISTER THE COLLECTION VIEWCELL
    doBasicSetUp()      
    
  }
  
  private func doBasicSetUp() {
    
    // MARK:- ADD SUBVIEWS TO VIEW
    
    view.addSubview(logoImageView)
    view.addSubview(setUpButton)
    view.addSubview(collectionView)
    view.addSubview(skipButton)
    
    // SKIP BUTTON CONSTRAINTS
    navigationItem.setRightBarButton(UIBarButtonItem(customView: skipButton), animated: true)
    
    // SETUPBUTTON constraints
    NSLayoutConstraint.activate([
      setUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
      setUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
      setUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      setUpButton.heightAnchor.constraint(equalToConstant: 55),
    ])
    
      // LOGO constraint
    _ = logoImageView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 30, leftConstant: 80, bottomConstant: 0, rightConstant: 80, widthConstant: 0, heightConstant: 30)
    
    // COLLECTION VIEW CONSTRAINT
    collectionView.anchorToTop(top: logoImageView.bottomAnchor, left: view.leftAnchor, bottom: setUpButton.topAnchor, right: view.rightAnchor)
    
    let tap = UITapGestureRecognizer(target: self, action: #selector(didTapSkipButton))
    skipButton.addGestureRecognizer(tap) //Attaches the gesture recognizer to the button

  }
  
  // Registers class for use in creating new collection view cells.
  fileprivate func registerCells() {
    collectionView.register(OnboardingCell.self, forCellWithReuseIdentifier: cellIdentifier)
  }
  
  // Move to the registration screen
  @objc private func didTapSkipButton(_ sender: UIButton) {
    let nextViewController = RegisterViewController()
    navigationController?.pushViewController(nextViewController, animated: true)
  }
  
  // Move to the login screen
  @objc private func didTapSigninButton(_ sender: UIButton) {
    let signInViewController = LoginViewController()
    signInViewController.modalPresentationStyle = .fullScreen
    present(signInViewController, animated: true, completion: nil)
  }
  
  // Tells the delegate when the user finishes scrolling the content.
  func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
    let pageNumber = Int(targetContentOffset.pointee.x / view.frame.width)
    pageControl = pageNumber
    
    if pageControl == 0 {
      skipButton.setTitle("Skip", for: .normal)
    } else {
      skipButton.setTitle("Sign in", for: .normal)
      navigationItem.setRightBarButton(UIBarButtonItem(customView: skipButton), animated: true)
      
      let tap = UITapGestureRecognizer(target: self, action: #selector(didTapSigninButton))
      skipButton.addGestureRecognizer(tap)
    }
    
  }
  // gets number of items to be displayed for the section from the data source
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return pages.count
  }
  
  // Gets the cell object at the index path specified. customizing cells displayed at the different indexpath with data from pages.
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! OnboardingCell
    let page = pages[indexPath.item]
    cell.page = page
    return cell
  }
  
  // give width and height to the collection view cell
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width, height: view.frame.height)
  }
  
}
