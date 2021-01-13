//
//  LoginFormController.swift
//  VK App
//
//  Created by Игорь Гомзяков on 14.01.2021.
//

import UIKit

class LoginFormController: UIViewController {

    @IBOutlet var scrollView: UIScrollView?
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passowrdTextField: UITextField!
    @IBAction func loginButtonPressed(_ sender: Any) {
        // Получаем текст логина
                let login = loginTextField.text!
                // Получаем текст-пароль
                let password = passowrdTextField.text!
                
                // Проверяем, верны ли они
                if login == "1" && password == "1" {
                    print("успешная авторизация")
                } else {
                    print("неуспешная авторизация")
                }

    }
    
    /// Это свойство нужно для того, чтобы понимать отображена ли клавиатура в данный момент или нет, так как нотификации о ее появлении/убирании приходят не совсем корректно (баг системы)
    private var keyboardShown = false
    
    /// Метод жизненного цикла контроллера, вызывается когда вью загрузилась и к ней можно обращаться
    override func viewDidLoad() {
        super.viewDidLoad()
        addKeyboardObservers()
        addTapGestureRecognizer()
    }
    
    /// Добавление слушателей на появление/ скрытие клавиатуры. Регистрируем контроллер в качестве обозревателя и передаем какой метод должен быть вызван(селектор) по наступлении события, передаем name в качетсве имени события, хоторое хотим слушать, у нас это появление и скрытие клавиатуры
    private func addKeyboardObservers() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow(notification:)),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide(notification:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    
    /// Добавляем обработку нажатия на экран для скрытия клавиатуры.
    private func addTapGestureRecognizer() {
      let recognizer = UITapGestureRecognizer(target: self, action: #selector(endEditing))
      view.addGestureRecognizer(recognizer)
     }
     
     @objc private func endEditing() {
      view.endEditing(true)
     }
    
    /// Обрабатываем момент появления клавиатуры, достаем из уведомления данные о том, какой будет финальный размер клавиатуры и добавляем отступы в скроллвью снизу. Перед эти проверяем не поднята ли уже клавиатура, так как этот метод может вызываться дважды (баг)
    @objc private func keyboardWillShow(notification: Notification) {
        guard !keyboardShown else { return }
        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        scrollView?.contentInset.bottom += keyboardFrame.height
        keyboardShown = true
    }

    /// Все то же самое, что и с появлением клавиатуры, только отступ уменьшаем
    @objc private func keyboardWillHide(notification: Notification) {
        guard keyboardShown else { return }
        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? CGRect else {
            return
        }
        scrollView?.contentInset.bottom -= keyboardFrame.height
        keyboardShown = false
    }
}
