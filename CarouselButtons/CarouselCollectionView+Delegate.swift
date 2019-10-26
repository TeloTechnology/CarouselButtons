//
//  CarouselCollectionView+Delegate.swift
//  CarouselButtons
//
//  Created by Rudi Luis on 26/10/2019.
//  Copyright © 2019 Telo Technology Limited. All rights reserved.
//

import Foundation

extension CarouselCollectionView {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(
            width: CarouselCollectionView.cellWidth,
            height: CarouselCollectionView.cellHeight
        )
    }
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didSelectButton?(indexPath.item)
    }
}
