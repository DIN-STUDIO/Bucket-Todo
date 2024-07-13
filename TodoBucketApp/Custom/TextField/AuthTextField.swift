import UIKit
import SnapKit

class AuthTextField: UITextField {
    init(placeHolder: String) {
        super.init(frame: .zero)
        setUpUI(placeHolder: placeHolder)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("[MainLabel] init(coder:) has not been implemented")
    }
    
    private func setUpUI(placeHolder: String) {
        self.placeholder = placeHolder
        self.backgroundColor = .lightGray
        self.layer.cornerRadius = 5
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 4
    }
    
    private func setConstraints() {
        self.snp.makeConstraints {
            $0.width.equalTo(360)
            $0.height.equalTo(64)
        }
    }
}
