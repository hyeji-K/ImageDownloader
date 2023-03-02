//
//  ViewController.swift
//  ImageDownloader
//
//  Created by heyji on 2023/03/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    
    let images: [String] = ["https://cdn.imweb.me/thumbnail/20210716/0fad908c4ae4d.png", "https://t1.daumcdn.net/cfile/tistory/996333405A8280FC23", "https://mblogthumb-phinf.pstatic.net/MjAxODAzMTlfMjgx/MDAxNTIxNDQ4Nzg1NjI3.4pKlyXsFWII-_eaoOIWl8inGh54_smXTXGgvSfNZGZ0g.nbbgwGRhTMKIn7MVPUKxXTPl6UW7jZrMMaX48jzf2NMg.JPEG.knicjin/beautiful_nature_wallpaper01.jpg?type=w800", "https://t1.daumcdn.net/cfile/tistory/9946A4505F5817A60D", "https://www.jeongseon.go.kr/upload/board/BDTOUR02/board_BDTOUR02_20210311_62.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func firstButton(_ sender: Any) {
        self.firstImageView.image = UIImage(systemName: "photo.artframe")
        let imageUrl = images[0]
        guard let url = URL(string: imageUrl) else { return }
        ImageLoadManager.shared.loadImage(url: url) { image in
            DispatchQueue.main.async {
                self.firstImageView.image = image                
            }
        }
    }
    
    @IBAction func secondButton(_ sender: Any) {
        self.secondImageView.image = UIImage(systemName: "photo.artframe")
        let imageUrl = images[1]
        guard let url = URL(string: imageUrl) else { return }
        ImageLoadManager.shared.loadImage(url: url) { image in
            DispatchQueue.main.async {
                self.secondImageView.image = image
            }
        }
    }
    
    @IBAction func thirdButton(_ sender: Any) {
        self.thirdImageView.image = UIImage(systemName: "photo.artframe")
        let imageUrl = images[2]
        guard let url = URL(string: imageUrl) else { return }
        ImageLoadManager.shared.loadImage(url: url) { image in
            DispatchQueue.main.async {
                self.thirdImageView.image = image
            }
        }
    }
    
    @IBAction func fourthButton(_ sender: Any) {
        self.fourthImageView.image = UIImage(systemName: "photo.artframe")
        let imageUrl = images[3]
        guard let url = URL(string: imageUrl) else { return }
        ImageLoadManager.shared.loadImage(url: url) { image in
            DispatchQueue.main.async {
                self.fourthImageView.image = image
            }
        }
    }
    
    @IBAction func fifthButton(_ sender: Any) {
        self.fifthImageView.image = UIImage(systemName: "photo.artframe")
        let imageUrl = images[4]
        guard let url = URL(string: imageUrl) else { return }
        ImageLoadManager.shared.loadImage(url: url) { image in
            DispatchQueue.main.async {
                self.fifthImageView.image = image
            }
        }
    }
    
    @IBAction func allOfButton(_ sender: Any) {
        self.firstImageView.image = UIImage(systemName: "photo.artframe")
        self.secondImageView.image = UIImage(systemName: "photo.artframe")
        self.thirdImageView.image = UIImage(systemName: "photo.artframe")
        self.fourthImageView.image = UIImage(systemName: "photo.artframe")
        self.fifthImageView.image = UIImage(systemName: "photo.artframe")
        for num in 0..<images.count {
            switch num {
            case 0:
                let imageUrl = images[0]
                guard let url = URL(string: imageUrl) else { return }
                ImageLoadManager.shared.loadImage(url: url) { image in
                    DispatchQueue.main.async {
                        self.firstImageView.image = image
                    }
                }
            case 1:
                let imageUrl = images[1]
                guard let url = URL(string: imageUrl) else { return }
                ImageLoadManager.shared.loadImage(url: url) { image in
                    DispatchQueue.main.async {
                        self.secondImageView.image = image
                    }
                }
            case 2:
                let imageUrl = images[2]
                guard let url = URL(string: imageUrl) else { return }
                ImageLoadManager.shared.loadImage(url: url) { image in
                    DispatchQueue.main.async {
                        self.thirdImageView.image = image
                    }
                }
            case 3:
                let imageUrl = images[3]
                guard let url = URL(string: imageUrl) else { return }
                ImageLoadManager.shared.loadImage(url: url) { image in
                    DispatchQueue.main.async {
                        self.fourthImageView.image = image
                    }
                }
            case 4:
                let imageUrl = images[4]
                guard let url = URL(string: imageUrl) else { return }
                ImageLoadManager.shared.loadImage(url: url) { image in
                    DispatchQueue.main.async {
                        self.fifthImageView.image = image
                    }
                }
            default:
                print()
            }
        }
    }
}

