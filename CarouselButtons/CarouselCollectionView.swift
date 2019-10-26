//
//  CarouselCollectionView.swift
//  CarouselButtons
//
//  Created by Rudi Luis on 26/10/2019.
//  Copyright © 2019 Telo Technology Limited. All rights reserved.
//

final public class CarouselCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    // MARK: - Typealias
    
    public typealias Data = (title: String, icon: UIImage?, isAvailable: Bool)
    
    // MARK: - Property
    
    internal static let cellHeight: CGFloat = 105
    
    internal static let cellWidth: CGFloat = 105
    
    private static let cellPadding: CGFloat = 8.0
    
    internal static let identify = String(describing: CarouselViewCell.self)
    
    internal var data = [Data]()
    
    private var layout: CarouselFlowLayout? = CarouselFlowLayout()
    
    // MARK: - Output
    
    public var didSelectButton: ((Int) -> Void)?
    
    // MARK: - Init
    
    deinit {
        data.removeAll()
        
        layout = nil
        
        dataSource = nil
        delegate = nil
    }
    
    // MARK: - Nib
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    // MARK: - Setup
    
    private func setup() {
        if let layout = layout {
            let size = CGSize(
                width: frame.width,
                height: CarouselCollectionView.cellHeight
            )
            
            layout.itemSize = size
            layout.estimatedItemSize = layout.itemSize
            layout.minimumInteritemSpacing = CarouselCollectionView.cellPadding
            layout.minimumLineSpacing = CarouselCollectionView.cellPadding
            
            collectionViewLayout = layout
        }
        
        showsHorizontalScrollIndicator = false
        
        let bundle = Bundle(for: CarouselViewCell.self)
        
        register(UINib(nibName: CarouselCollectionView.identify,
                       bundle: bundle),
                 forCellWithReuseIdentifier: CarouselCollectionView.identify
        )
        
        dataSource = self
        delegate = self
    }
    
    // MARK: - Data
    
    public func add(_ data: [Data]) {
        self.data.removeAll()
        
        self.data.append(contentsOf: data)
        
        reloadData()
    }
}
