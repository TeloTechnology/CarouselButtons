//
//  CarouselViewCell.swift
//  CarouselButtons
//
//  Created by Rudi Luis on 26/10/2019.
//  Copyright © 2019 Telo Technology Limited. All rights reserved.
//

final internal class CarouselViewCell: UICollectionViewCell {
    
    // MARK: - Property
    
    @IBOutlet
    private weak var titleLabel: UILabel!
    
    @IBOutlet
    private weak var iconImageView: UIImageView!
    
    @IBOutlet
    private weak var containerViews: UIView!
    
    // MARK: - Configure
    
    internal func configure(with model: CarouselCollectionView.Data? = nil) {
        let isAvailable = model?.isAvailable ?? false
        
        isUserInteractionEnabled = isAvailable
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 6
        layer.borderColor = (isAvailable ? UIColor.lightGray : UIColor.gray).cgColor

        configureTitleLabel(with: model)
        configureIcon(with: model)
    }
    
    private func configureTitleLabel(with model: CarouselCollectionView.Data? = nil) {
        let isAvailable = model?.isAvailable ?? false

        titleLabel.text = model?.title ?? ""
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.darkText
        titleLabel.alpha = alphaValue(for: isAvailable)
    }

    private func configureIcon(with model: CarouselCollectionView.Data? = nil) {
        iconImageView.image = model?.icon
        iconImageView.alpha = alphaValue(for: model?.isAvailable ?? false)
    }
    
    private func alphaValue(for isAvailable: Bool) -> CGFloat {
        return isAvailable ? 1.0 : 0.5
    }
}
