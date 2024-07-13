import UIKit
import SnapKit

final class PaleOrangeBtn: UIButton {
    var nextPage: (() -> ())?
    
    init(title: String) {
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        setTitleColor(.brightOrange, for: .normal)
        layer.cornerRadius = 15
        self.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .medium)
        self.backgroundColor = .paleOrange
        self.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("[Button.swift] init(coder:) has not been implemented")
    }
    
    @objc func buttonTapped() {
        nextPage?()
    }
    
    private func setConstraints() {
        self.snp.makeConstraints {
            $0.width.equalTo(360)
            $0.height.equalTo(64)
        }
    }
}
