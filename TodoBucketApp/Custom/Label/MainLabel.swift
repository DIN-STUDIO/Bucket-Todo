import UIKit
import SnapKit

class MainLabel: UILabel {
    init(text: String) {
        super.init(frame: .zero)
        
        print(type(of: text))
        
        self.text = text
        self.textColor = .black
        self.textAlignment = .center
        self.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
    }
    
    required init?(coder: NSCoder) {
        fatalError("[MainLael] init(coder:) has not been implemented")
    }
}
