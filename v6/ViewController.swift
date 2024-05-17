//
//  ViewController.swift
//  Game_Cube
//
//  Created by MacOSX on 19.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var imageViewLogoGameCube = UIImageView(image: UIImage(named: "LogoGameCube")) //Named - собственная картинка, systemName - системная
    
    private var labelKubik: UILabel = { //создали label - поле с текстом
        let labelKubik = UILabel() //создали переменную с именем labelKubik
        labelKubik.text = "Кубик" //указали на поле текст Кубик
        labelKubik.textAlignment = .center //расположение текста по центру поля
        labelKubik.textColor = .black //цвет текста
        labelKubik.backgroundColor = .white //цвет поля
        return labelKubik
    }()
    
    private var labelVypaloChislo: UILabel = { //создали label - поле с текстом
        let labelVypaloChislo = UILabel() //создали переменную с именем labelVypaloChislo
        labelVypaloChislo.text = "Выпало число:" //указали на поле текст Выпало число:
        labelVypaloChislo.font = labelVypaloChislo.font.withSize(30) //размер шрифта
        labelVypaloChislo.textAlignment = .center //расположение текста по центру поля
        labelVypaloChislo.textColor = .black //цвет текста
        labelVypaloChislo.backgroundColor = .white //цвет поля
        return labelVypaloChislo
    }()
    
    private var UILabelChislo: UILabel = { //создал UILabel для вывода выпавшего числа
        let UILabelChislo = UILabel()
        UILabelChislo.backgroundColor = .white
        UILabelChislo.textAlignment = .center //расположение текста по центру поля
        UILabelChislo.font = UILabelChislo.font.withSize(150) //размер шрифта
        return UILabelChislo
    }()
    
//    private var UILabelKolGraney: UILabel = {
//        let UILabelKolGraney = UILabel()
//        UILabelKolGraney.text = "Количество граней кубика:"
//        UILabelKolGraney.font = UILabelKolGraney.font.withSize(16) //размер шрифта
//        UILabelKolGraney.textAlignment = .center //расположение текста по центру поля
//        UILabelKolGraney.textColor = .black //цвет текста
//        UILabelKolGraney.backgroundColor = .white //цвет поля
//        return UILabelKolGraney
//    }()
    
//    private var UIStepperKolGraney: UIStepper = {
//        let UIStepperKolGraney = UIStepper()
//        UIStepperKolGraney.maximumValue = 20
//        return UIStepperKolGraney
//    }()
    
//    private var UILabelStepper: UILabel = {
//        let UILabelStepper = UILabel()
//        UILabelStepper.font = UILabelStepper.font.withSize(16) //размер шрифта
//        UILabelStepper.textAlignment = .center //расположение текста по центру поля
//        UILabelStepper.textColor = .black //цвет текста
//        UILabelStepper.backgroundColor = .white //цвет поля
//        return UILabelStepper
//    }()
//
//    private var UIbuttonSbros6Gran: UIButton = {
//        let UIbuttonSbros6Gran = UIButton()
//        UIbuttonSbros6Gran.setTitle("Сброс на 6 граней", for: .normal) //текст кнопки
//        UIbuttonSbros6Gran.setTitleColor(.black, for: .normal) //цвет текста кнопки
//        UIbuttonSbros6Gran.backgroundColor = .yellow //цвет фона
//        return UIbuttonSbros6Gran
//    }()
    
    private var UIbuttonBrosit: UIButton = {
        let UIbuttonBrosit = UIButton()
        UIbuttonBrosit.setTitle("Бросить!", for: .normal) //текст кнопки
        UIbuttonBrosit.setTitleColor(.black, for: .normal) //цвет текста кнопки
        UIbuttonBrosit.backgroundColor = .green //цвет фона
//        UIbuttonBrosit.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return UIbuttonBrosit
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan //цвет фона = голубой
        navigationController?.navigationBar.barTintColor = .cyan //цвет верхней части
//        UIStepperKolGraney.wraps = true
//        UIStepperKolGraney.autorepeat = true
//        UIStepperKolGraney.maximumValue = 20
        UIbuttonBrosit.addTarget(self, action: #selector(tap), for: .touchUpInside)
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(imageViewLogoGameCube)
        view.addSubview(labelKubik)
        view.addSubview(labelVypaloChislo)
        view.addSubview(UILabelChislo)
//        view.addSubview(UILabelKolGraney)
//        view.addSubview(UIStepperKolGraney)
//        view.addSubview(UILabelStepper)
//        view.addSubview(UIbuttonSbros6Gran)
        view.addSubview(UIbuttonBrosit)
        setupConstraints()
    }
//    private func stepperChanged(_ sender: UIStepper) {
//        UILabelStepper.text = Int(sender.value).description
//    }
    
    @objc private func tap () -> Void { //функция, которая передает в UILabelChislo случайное число в диапазоне от 1 до 6 включительно
//        UIViewChislo.text
        UILabelChislo.text = String(Int.random(in: 1...6))
    }
    
    private func setupConstraints(){
        imageViewLogoGameCube.translatesAutoresizingMaskIntoConstraints = false
        labelKubik.translatesAutoresizingMaskIntoConstraints = false
        labelVypaloChislo.translatesAutoresizingMaskIntoConstraints = false
        UILabelChislo.translatesAutoresizingMaskIntoConstraints = false
//        UILabelKolGraney.translatesAutoresizingMaskIntoConstraints = false
//        UIStepperKolGraney.translatesAutoresizingMaskIntoConstraints = false
//        UILabelStepper.translatesAutoresizingMaskIntoConstraints = false
//        UIbuttonSbros6Gran.translatesAutoresizingMaskIntoConstraints = false
        UIbuttonBrosit.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            imageViewLogoGameCube.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageViewLogoGameCube.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageViewLogoGameCube.widthAnchor.constraint(equalToConstant: view.frame.size.width/3),
            imageViewLogoGameCube.heightAnchor.constraint(equalToConstant: view.frame.size.width/3),
            
            labelKubik.topAnchor.constraint(equalTo: imageViewLogoGameCube.bottomAnchor, constant: 5),
            labelKubik.widthAnchor.constraint(equalToConstant: view.frame.size.width/5), //ширина поля = ширина устройства / 5
            labelKubik.centerXAnchor.constraint(equalTo: view.centerXAnchor), //центр поля = центр устройства по ширине
            labelKubik.heightAnchor.constraint(equalToConstant: view.frame.size.height/30), //высота поля = высота устройства / 30
            
            //labelVypaloChislo
            labelVypaloChislo.topAnchor.constraint(equalTo: labelKubik.bottomAnchor, constant: 40),
            labelVypaloChislo.widthAnchor.constraint(equalToConstant: view.frame.size.width/2), //ширина поля
            labelVypaloChislo.centerXAnchor.constraint(equalTo: view.centerXAnchor), //центр поля = центр устройства по ширине
            labelVypaloChislo.heightAnchor.constraint(equalToConstant: view.frame.size.height/17), //высо						та поля
            
            //UIViewChislo
            UILabelChislo.topAnchor.constraint(equalTo: labelVypaloChislo.bottomAnchor, constant: 20), //отступ от верхнего элемента
            UILabelChislo.widthAnchor.constraint(equalToConstant: view.frame.size.width/2), //ширина поля
            UILabelChislo.centerXAnchor.constraint(equalTo: view.centerXAnchor), //центр поля = центр устройства по ширине
            UILabelChislo.heightAnchor.constraint(equalToConstant: view.frame.size.width/2), //высота поля
            
            
//            //UILabelKolGraney
//            UILabelKolGraney.topAnchor.constraint(equalTo: UIViewChislo.bottomAnchor, constant: 20),
//            UILabelKolGraney.widthAnchor.constraint(equalToConstant: view.frame.size.width/2), //ширина поля
//            UILabelKolGraney.centerXAnchor.constraint(equalTo: view.centerXAnchor), //центр поля = центр устройства по ширине
//            UILabelKolGraney.heightAnchor.constraint(equalToConstant: view.frame.size.height/35), //высота поля
//
//            //UIStepperKolGraney
//            UIStepperKolGraney.topAnchor.constraint(equalTo: UILabelKolGraney.bottomAnchor, constant: 10),
//            UIStepperKolGraney.widthAnchor.constraint(equalToConstant: view.frame.size.width/2), //ширина поля
//            UIStepperKolGraney.centerXAnchor.constraint(equalTo: view.centerXAnchor), //центр поля = центр устройства по ширине
//            UIStepperKolGraney.heightAnchor.constraint(equalToConstant: view.frame.size.height/35), //высота поля
//
//            //UILabelStepper
//            UILabelStepper.topAnchor.constraint(equalTo: UIStepperKolGraney.bottomAnchor, constant: 15),
//            UILabelStepper.widthAnchor.constraint(equalToConstant: view.frame.size.width/2), //ширина поля
//            UILabelStepper.centerXAnchor.constraint(equalTo: view.centerXAnchor), //центр поля = центр устройства по ширине
//            UILabelStepper.heightAnchor.constraint(equalToConstant: view.frame.size.height/35), //высота поля
//
//            //UIbuttonSbros6Gran
//            UIbuttonSbros6Gran.topAnchor.constraint(equalTo: UILabelStepper.bottomAnchor, constant: 20),
//            UIbuttonSbros6Gran.widthAnchor.constraint(equalToConstant: view.frame.size.width/2), //ширина поля
//            UIbuttonSbros6Gran.centerXAnchor.constraint(equalTo: view.centerXAnchor), //центр поля = центр устройства по ширине
//            UIbuttonSbros6Gran.heightAnchor.constraint(equalToConstant: view.frame.size.height/35), //высота поля
            
            
            //UIbuttonBrosit
            UIbuttonBrosit.topAnchor.constraint(equalTo: UILabelChislo.bottomAnchor, constant: 20),
            UIbuttonBrosit.widthAnchor.constraint(equalToConstant: view.frame.size.width/2), //ширина поля
            UIbuttonBrosit.centerXAnchor.constraint(equalTo: view.centerXAnchor), //центр поля = центр устройства по ширине
            UIbuttonBrosit.heightAnchor.constraint(equalToConstant: view.frame.size.height/15), //высота поля
        ])
        
        
    }
    

}
