//
//  UIImageView+Extension.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

extension UIImageView {

    func generateQRImage(string: String) {

        // 1
        let data = string.data(using: String.Encoding.ascii)
        // 2
        guard let qrFilter = CIFilter(name: "CIQRCodeGenerator") else { return }
        // 3
        qrFilter.setValue(data, forKey: "inputMessage")
        // 4
        guard let qrImage = qrFilter.outputImage else { return }
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        let scaledQrImage = qrImage.transformed(by: transform)
//        // Get a CIContext
        let context = CIContext()
//        // Create a CGImage *from the extent of the outputCIImage*
        guard let cgImage = context.createCGImage(scaledQrImage, from: scaledQrImage.extent) else { return }
//        // Finally, get a usable UIImage from the CGImage
        image = UIImage(cgImage: cgImage)
    }

}
