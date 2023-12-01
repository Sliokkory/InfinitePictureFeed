//
//  ImagesListCell.swift
//  InfinitePictureFeed
//
//  Created by Илья Подлесный on 30.11.2023.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var cellImage: UIImageView!
}
