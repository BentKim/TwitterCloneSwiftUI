//
//  ImageUploader.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/08/01.
//

import FirebaseStorage
import UIKit

struct ImageUploader {
    static func uploadImage(image: UIImage, completion: @escaping(String) -> Void){
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
        
        ref.putData(imageData, metadata: nil) { _, error in
            if let error = error{
                print("DEBUG: faileld to upload image with error: \(error.localizedDescription)")
                return
            }
            
            ref.downloadURL { imgUrl, _ in
                guard let imgUrl = imgUrl?.absoluteString else { return }
                completion(imgUrl)
            }
        }
    }
}
