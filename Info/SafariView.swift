//
//  SafariView.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 17/12/2023.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable
{
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController
    {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>)
    {
        
    }
}