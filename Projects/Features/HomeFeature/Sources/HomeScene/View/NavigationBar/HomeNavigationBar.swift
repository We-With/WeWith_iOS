import UIKit

import RxSwift
import RxCocoa

import Core
import DSKit

final class HomeNavigationBar: UIView {

    public var rightButtonTap: ControlEvent<Void> {
         return rightButton.rx.tap
     }
    private let logoImageView = UIImageView().then {
        $0.image = DSKitAsset.Assets.mainTitle.image.withRenderingMode(.alwaysOriginal)
        $0.contentMode = .scaleToFill
    }

    private let rightButton = UIButton(type: .custom).then {
        $0.setImage(DSKitAsset.Assets.setting.image, for: .normal)
    }

    private lazy var rightItemsStackView = UIStackView(arrangedSubviews: [rightButton]).then {
        $0.axis = .horizontal
        $0.spacing = 4
        $0.distribution = .fillEqually
    }

    init() {
        super.init(frame: .zero)
        setUI()
        setLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeNavigationBar {
    @discardableResult
    public func setRightButtonImage(image: UIImage) -> Self {
        self.rightButton.setImage(image, for: .normal)
        return self
    }
}

// MARK: - UI & Layout
extension HomeNavigationBar {
    private func setUI() {
        self.backgroundColor = DSKitAsset.Colors.gray25.color
    }

    private func setLayout() {
        self.addSubviews([logoImageView, rightItemsStackView])

        self.snp.makeConstraints { make in
            make.height.equalTo(42)
        }

        logoImageView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview().inset(20)
            make.width.equalTo(129)
        }

        rightItemsStackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.trailing.equalToSuperview().inset(20)
        }
    }
}
