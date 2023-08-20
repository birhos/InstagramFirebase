//
//  FeedController.swift
//  InstagramFirebase
//
//  Created by Haydar Demir on 19.08.2023.
//

import UIKit

final class FeedController: UICollectionViewController {
    static let cellIdentifier = "FeedControllerCell"
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureUI()
    }
    
    // MARK: Helpers
    
    private func configureUI() {
        view.backgroundColor = .white
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: FeedController.cellIdentifier)
    }
}

// MARK: UICollectionViewDataSource

extension FeedController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeedController.cellIdentifier, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}

// MARK: UICollectionViewDelegateFlowLayout

extension FeedController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = view.frame.width
        let height: CGFloat = 200
        return CGSize(width: width, height: height)
    }
}
