//
//  CarouselFlowLayout.swift
//  CarouselButtons
//
//  Created by Rudi Luis on 26/10/2019.
//  Copyright © 2019 Telo Technology Limited. All rights reserved.
//

internal final class CarouselFlowLayout: UICollectionViewFlowLayout {
    
    // MARK: - Init
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    public override init() {
        super.init()
        
        setup()
    }
    
    internal required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    // MARK: - Setup
    
    private func setup() {
        scrollDirection = .horizontal
        
        minimumInteritemSpacing = 1.0
        minimumLineSpacing = 1.0
    }
    
    // MARK: - Layout
    
    internal override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let attributes = super.layoutAttributesForElements(in: rect)
        
        attributes?.forEach {
            $0.frame = CGRect(
                x: $0.frame.minX,
                y: 0,
                width: $0.frame.width,
                height: $0.frame.height
            )
        }
        
        return attributes
    }
}
