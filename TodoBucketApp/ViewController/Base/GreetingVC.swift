import UIKit
import SnapKit

final class GreetingVC: UIViewController {
    lazy var signUpButton: PaleOrangeBtn = {
        let button = PaleOrangeBtn(title: "신규 회원가입")
        return button
    }()
    
    lazy var signInButton: PaleOrangeBtn = {
        let button = PaleOrangeBtn(title: "기존 유저 로그인")
        return button
    }()
    
    private func setUpUI() {
        view.backgroundColor = .white
        
        [signUpButton,
         signInButton].forEach {
            view.addSubview($0)
        }
    }
    
    private func setConstraints() {
        signUpButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(view.snp.top).offset(670)
        }
        
        signInButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(signUpButton.snp.bottom).offset(15)
        }
    }
    
    private func moveToSignUpVC() {
        signUpButton.nextPage = { [weak self] in
            let signUpVC = SignUpVC()
            self?.navigationController?.pushViewController(signUpVC, animated: true)
        }
    }
    
    private func moveToSignInVC() {
        signInButton.nextPage = { [weak self] in
            let signInVC = SignInVC()
            self?.navigationController?.pushViewController(signInVC, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        setConstraints()
        moveToSignUpVC()
        moveToSignInVC()
    }
}
