import UIKit
import Kingfisher

class MediaCell: UITableViewCell {
  @IBOutlet weak var avatarImageView: UIImageView!
  @IBOutlet weak var userNameLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  @IBOutlet weak var contextButton: UIButton!
  @IBOutlet weak var mediaImageView: UIImageView!
  @IBOutlet weak var likeButton: UIButton!
  @IBOutlet weak var commentButton: UIButton!
  @IBOutlet weak var sendButton: UIButton!
  @IBOutlet weak var bookmarkButton: UIButton!
  @IBOutlet weak var usersWhoLikeButton: UIButton!
  @IBOutlet weak var usersWhoCommentButton: UIButton!

  override func layoutSubviews() {
    super.layoutSubviews()

    avatarImageView.layer.cornerRadius = avatarImageView.frame.size.height/2
  }

  func configure(with media: Media) {
    avatarImageView.kf.setImage(with: media.user.avatar)
    userNameLabel.text = media.user.name
    locationLabel.text = media.location
    mediaImageView.kf.setImage(with: media.images.standard.url)
    usersWhoLikeButton.setTitle("\(media.likes.count) likes", for: .normal)
    usersWhoCommentButton.setTitle("View all \(media.comments.count) comments", for: .normal)
  }
}
