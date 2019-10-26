//
//  CarouselCollectionView+DataSource.swift
//  CarouselButtons
//
//  Created by Rudi Luis on 26/10/2019.
//  Copyright © 2019 Telo Technology Limited. All rights reserved.
//

import Foundation

extension CarouselCollectionView {
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell: CarouselViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: CarouselCollectionView.identify, for: indexPath) as? CarouselViewCell else {
            fatalError("Error get CarouselViewCell")
        }
        
        let values = data[indexPath.item]
        
        cell.configure(with: values)
        
        return cell
    }
}
