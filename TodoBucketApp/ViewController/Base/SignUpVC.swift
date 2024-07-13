import UIKit
import SnapKit

class SignUpVC: UIViewController {
    lazy var guideMessageLabel: MainLabel = {
        let label = MainLabel(text: "아이디와 비밀번호를 입력해주세요")
        return label
    }()
    
    lazy var idLabel: SubLabel = {
        let label = SubLabel(text: "아이디")
        return label
    }()
    
    lazy var emailTextField: AuthTextField = {
        let textField = AuthTextField(placeHolder: "이메일")
        return textField
    }()
    
    lazy var pwLabel: SubLabel = {
        let label = SubLabel(text: "비밀번호")
        return label
    }()
    
    lazy var pwTextField: AuthTextField = {
        let textField = AuthTextField(placeHolder: "비밀번호 입력")
        return textField
    }()
    
    lazy var nickNameLabel: SubLabel = {
        let label = SubLabel(text: "닉네임")
        return label
    }()
    
    lazy var nickNameTextField: AuthTextField = {
        let textField = AuthTextField(placeHolder: "이름 입력")
        return textField
    }()
    
    lazy var nextButton: PaleOrangeBtn = {
        let button = PaleOrangeBtn(title: "다음")
        return button
    }()
    
    private func setUpUI() {
        view.backgroundColor = .white
        
        [guideMessageLabel,
         idLabel,
         emailTextField,
         pwLabel,
         pwTextField,
         nickNameLabel,
         nickNameTextField,
         nextButton].forEach {
            view.addSubview($0)
        }
    }
    
    private func setConstraints() {
        guideMessageLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(17)
            $0.top.equalToSuperview().offset(170)
        }
        
        idLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(14)
            $0.top.equalToSuperview().offset(225)
        }
        
        emailTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(250)
            $0.width.equalTo(360)
            $0.height.equalTo(64)
        }
        
        pwLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(14)
            $0.top.equalToSuperview().offset(335)
        }
        
        pwTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(360)
            $0.width.equalTo(360)
            $0.height.equalTo(64)
        }
        
        nickNameLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(14)
            $0.top.equalToSuperview().offset(455)
        }
        
        nickNameTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(480)
            $0.width.equalTo(360)
            $0.height.equalTo(64)
        }
        
        nextButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(745)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        setConstraints()
    }
}
