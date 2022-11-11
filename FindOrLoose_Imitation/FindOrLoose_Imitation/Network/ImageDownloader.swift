//
//  ImageDownloader.swift
//  FindOrLoose_Imitation
//
//  Created by ming on 2022/11/11.
//

import Foundation
import UIKit

enum ImageDownloader {
    static func download(url: String, completion: @escaping (UIImage?) -> Void) {
        let url = URL(string: url)!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let httpURLResponse = response as? HTTPURLResponse,
                  httpURLResponse.statusCode == 200,
                  let data = data, error == nil,
                  let image = UIImage(data: data) else {
                completion(nil)
                return
            }
            completion(image)
        }.resume()
    }
}
