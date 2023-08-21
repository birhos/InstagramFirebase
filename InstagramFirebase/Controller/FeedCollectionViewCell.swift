//
//  FeedCollectionViewCell.swift
//  InstagramFirebase
//
//  Created by Haydar Demir on 20.08.2023.
//

import UIKit
import SnapKit

class FeedCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "FeedCollectionViewCell"

    // MARK: Properties

    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named: "venom-7")
        return imageView
    }()

    private lazy var usernameButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.setTitle("venom", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.addTarget(self, action: #selector(didTapUsername), for: .touchUpInside)
        return button
    }()

    private lazy var postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named: "venom-7")
        return imageView
    }()

    private lazy var likeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "like_unselected"), for: .normal)
        button.tintColor = .black
        return button
    }()

    private lazy var commentButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "comment"), for: .normal)
        button.tintColor = .black
        return button
    }()

    private lazy var shareButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "send2"), for: .normal)
        button.tintColor = .black
        return button
    }()

    private lazy var likesLabel: UILabel = {
        let label = UILabel()
        label.text = "1 like"
        label.font = UIFont.boldSystemFont(ofSize: 13)
        return label
    }()

    private lazy var captionLabel: UILabel = {
        let label = UILabel()
        label.text = "Some text caption for now..."
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()

    private lazy var postTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "2 days ago"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .lightGray
        return label
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()

    // MARK: Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .white

        addSubview(profileImageView)
        addSubview(usernameButton)
        addSubview(postImageView)
        addSubview(likesLabel)
        addSubview(captionLabel)
        addSubview(postTimeLabel)
        
        profileImageView.layer.cornerRadius = 40 / 2
        profileImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(12)
            make.left.equalToSuperview().offset(12)
            make.height.equalTo(40)
            make.width.equalTo(40)
        }
        
        usernameButton.snp.makeConstraints { make in
            make.centerY.equalTo(profileImageView)
            make.left.equalTo(profileImageView.snp.right).offset(8)
        }
        
        postImageView.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(8)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(postImageView.snp.width)
        }

        stackView = UIStackView(arrangedSubviews: [likeButton, commentButton, shareButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.top.equalTo(postImageView.snp.bottom)
            make.left.equalToSuperview()
            make.width.equalTo(120)
            make.height.equalTo(50)
        }

        likesLabel.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(4)
            make.left.equalToSuperview().offset(8)
        }
        
        captionLabel.snp.makeConstraints { make in
            make.top.equalTo(likesLabel.snp.bottom).offset(4)
            make.left.equalToSuperview().offset(8)
        }

        postTimeLabel.snp.makeConstraints { make in
            make.top.equalTo(captionLabel.snp.bottom).offset(4)
            make.left.equalToSuperview().offset(8)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Actions

    @objc func didTapUsername() {
        print("DEBUG: did tap username")
    }

    // MARK: Helpers
    
    
}
