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
        // Create the filter
        guard let colorInvertFilter = CIFilter(name: "CIColorInvert") else { return }
        // Set the input image to what we generated above
        colorInvertFilter.setValue(scaledQrImage, forKey: "inputImage")
        // Get the output CIImage
        guard let outputInvertedImage = colorInvertFilter.outputImage else { return }
        // Create the filter
        guard let maskToAlphaFilter = CIFilter(name: "CIMaskToAlpha") else { return }
        // Set the input image to the colorInvertFilter output
        maskToAlphaFilter.setValue(outputInvertedImage, forKey: "inputImage")
        // Get the output CIImage
        guard let outputCIImage = maskToAlphaFilter.outputImage else { return }
        // Get a CIContext
        let context = CIContext()
        // Create a CGImage *from the extent of the outputCIImage*
        guard let cgImage = context.createCGImage(outputCIImage, from: outputCIImage.extent) else { return }
        // Finally, get a usable UIImage from the CGImage
        image = UIImage(cgImage: cgImage)
    }

}
