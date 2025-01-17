import UIKit
import SnapKit
import Then
import RxSwift
import RxCocoa
import DSKit

open class TitlePickleView: UIView {

    private let telUILabel = MGLabel(text: " 마음가짐 테스트 영상", font: UIFont.Pretendard.titleMedium, textColor: .white)
    
    private let textInformation = MGLabel(text: "오늘도 열심히 헬스하러 헬스장을 가보는 것은 어...", font: UIFont.Pretendard.bodyMedium2, textColor: .white)

    public override init(frame: CGRect) {
        super.init(frame: frame)

        setupUI()
        setupConstraints()
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        addSubview(telUILabel)
        addSubview(textInformation)
    }

    private func setupConstraints() {
        telUILabel.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
        }

        textInformation.snp.makeConstraints {
            $0.top.equalTo(telUILabel.snp.bottom).offset(12.0)
            $0.leading.equalTo(telUILabel.snp.leading)
        }
    }
}
