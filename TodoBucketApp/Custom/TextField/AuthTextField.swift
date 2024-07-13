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
        self.backgroundColor = .lightGrey
        self.layer.cornerRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.layer.shadowOpacity = 0.1
        self.layer.shadowRadius = 4
        
        let placeholderAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.gray, // Placeholder text color
            .font: UIFont.systemFont(ofSize: 16, weight: .light) // Placeholder font weight
        ]
        self.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: placeholderAttributes)
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftViewMode = .always
    }
    
    private func setConstraints() {
        self.snp.makeConstraints {
            $0.width.equalTo(360)
            $0.height.equalTo(64)
        }
    }
}
