import UIKit
import SnapKit

class SubLabel: UILabel {
    init(text: String) {
        super.init(frame: .zero)
        
        self.text = text
        self.textColor = .mediumGray
        self.textAlignment = .center
        self.font = UIFont.systemFont(ofSize: 16, weight: .regular)
    }
    
    required init?(coder: NSCoder) {
        fatalError("[SubLabel] init(coder:) has not been implemented")
    }
}
