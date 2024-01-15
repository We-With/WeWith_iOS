import UIKit
import SnapKit
import Then
import DSKit

public class PostureDetailCautionTableViewCell: UITableViewCell {
    static let identifier: String = "PostureDetailCautionTableViewCell"
    
    private var exerciseWay = UILabel().then {
        $0.text = "주의사항"
        $0.textColor = .black
        $0.textAlignment = .left
        $0.font = UIFont.Pretendard.titleMedium
    }
    
    private var exerciseCaution1 = MaeumGaGymPostureInfoLabel(titleNumber: "01", text: "양팔을 가슴 옆에 두고 바닥에 엎드립니다.")
    
    private var exerciseCaution2 = MaeumGaGymPostureInfoLabel(titleNumber: "02", text: "양팔을 가슴 옆에 두고 바닥에 엎드립니다.", numberOfLines: 2)
    
    public func setup(textNum1: String, cautionText1: String, textNum2: String, cautionText2: String) {
        self.exerciseCaution1.updateData(textNum: textNum1, text: textNum1)
        self.exerciseCaution2.updateData(textNum: textNum2, text: textNum2)
        
        addViews()
        setupViews()
    }
    
    private func addViews() {
        [
            exerciseWay,
            exerciseCaution1,
            exerciseCaution2,
        ].forEach { contentView.addSubview($0) }
    }
    
    private func setupViews() {
        
        exerciseWay.snp.makeConstraints {
            $0.top.equalToSuperview().offset(12.0)
            $0.leading.equalToSuperview()
            $0.width.equalToSuperview()
            $0.height.equalTo(32.0)
        }
        
        exerciseCaution1.snp.makeConstraints {
            $0.top.equalTo(exerciseWay.snp.bottom).offset(24.0)
            $0.leading.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        exerciseCaution2.snp.makeConstraints {
            $0.top.equalTo(exerciseCaution1.snp.bottom).offset(16.0)
            $0.leading.equalToSuperview()
            $0.width.equalToSuperview()
        }
    }
}