//
//  ViewController.swift
//  symbolDemo
//
//  Created by Chu Go-Go on 2022/3/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usesymbolImageView()
        view.backgroundColor = UIColor.orange
    }
    func usesymbolImageView(){
//        把找到的圖片名稱打上去
        let symbolImage = UIImage(systemName: "eye.trianglebadge.exclamationmark.fill")
//        把他設定成ImageView
        let symbolImageView = UIImageView(image: symbolImage)
//        設定顏色tintColor
        symbolImageView.tintColor = .systemBlue
//        設定大小
        symbolImageView.frame = CGRect(x: 100, y: 100, width: 150, height: 100)
//        加入到view裡面
        view.addSubview(symbolImageView)
//       建立一個 Hierarchical 的格式 以及他的顏色
        let HierarchicalSymbol = UIImage.SymbolConfiguration(hierarchicalColor: .green)
//       建立一張圖片是"gamecontroller"他的格式是Hierarchical
        let HierarchicalSynbolImage = UIImage(systemName: "eye.trianglebadge.exclamationmark.fill",withConfiguration: HierarchicalSymbol)
        let HierarchicalSynbolImageView = UIImageView(image: HierarchicalSynbolImage)
        HierarchicalSynbolImageView.frame = CGRect(x: 100, y: 200, width: 150, height: 100)
        view.addSubview(HierarchicalSynbolImageView)
//        Multicolor
        let MulticolorSymbol = UIImage.SymbolConfiguration.preferringMulticolor()
        let MulticolorSymbolmage = UIImage(systemName: "eye.trianglebadge.exclamationmark.fill",withConfiguration: MulticolorSymbol)
        let MulticolorSymbolmageView = UIImageView(image: MulticolorSymbolmage)
        MulticolorSymbolmageView.tintColor = .red
        MulticolorSymbolmageView.frame = CGRect(x: 100, y: 300, width: 150, height: 100)
        view.addSubview(MulticolorSymbolmageView)
//        Palette
        let PaletteSymbol = UIImage.SymbolConfiguration(paletteColors: [UIColor.purple,UIColor.white])
        let PaletteSymbolImage = UIImage(systemName: "eye.trianglebadge.exclamationmark.fill",withConfiguration: PaletteSymbol)
        let PaletteSymbolImageView = UIImageView(image: PaletteSymbolImage)
        PaletteSymbolImageView.frame = CGRect(x: 100, y: 400, width: 150, height: 100)
        view.addSubview(PaletteSymbolImageView)
    }

}

