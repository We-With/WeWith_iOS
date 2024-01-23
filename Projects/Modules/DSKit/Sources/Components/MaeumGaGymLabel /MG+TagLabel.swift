import UIKit
import SnapKit
import Then
import Core

open class MGTagLabel: BaseLabel {
    private var textLabel = UILabel().then {
        $0.textAlignment = .center
        $0.numberOfLines = 1
        $0.backgroundColor = .clear
        $0.textColor = DSKitAsset.Colors.blue500.color
        $0.font = UIFont.Pretendard.labelMedium
    }
    
    public init(
        text: String
    ) {
        super.init(frame: .zero)
        self.textLabel.text = text
        self.layer.cornerRadius = 18.0
        self.clipsToBounds = true 
        self.backgroundColor = DSKitAsset.Colors.gray50.color
        
        addView()
        setupView()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addView() {
        self.addSubview(textLabel)
    }
    
    private func setupView() {
        textLabel.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalTo(20.0)
            $0.center.equalToSuperview()
        }
    }
    
    public func updateData(
        text: String,
        textcolor: UIColor? = DSKitAsset.Colors.blue500.color,
        backgroundColor: UIColor? = DSKitAsset.Colors.gray50.color,
        cornerRadius: Double? = 18.0,
        font: UIFont? = UIFont.Pretendard.labelMedium
    ) {
        self.textLabel.text = text
        self.textLabel.textColor = textcolor
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius ?? 18.0
        self.textLabel.font = font
        
        addView()
        setupView()
    }
}