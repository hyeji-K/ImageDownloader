//
//  ImageLoadManager.swift
//  ImageDownloader
//
//  Created by heyji on 2023/03/02.
//

import UIKit

class ImageLoadManager {
    static let shared = ImageLoadManager()
    
    func loadImage(url: URL, completion: @escaping (UIImage?) -> Void) {
        let urlSession = URLSession(configuration: .default)
        let dataTask = urlSession.dataTask(with: url) { data, response, error in
            do {
                let data = try Data(contentsOf: url)
                let cover = UIImage(data: data)
                completion(cover)
            } catch {
                print("thumbnail down failed")
            }
        }
        dataTask.resume()
    }
    
}
