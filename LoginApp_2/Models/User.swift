//
//  File.swift
//  LoginApp_2
//
//  Created by Pavel Krigin on 17.8.22..
//

struct User {
    let login: String
    let passWord: String
    let person: Person
    static func getUserData() -> User {
        User(
            login: "Pavel",
            passWord: "123",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let hobbie: String
    let job: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    static func getPerson() -> Person {
        Person(
            name: "Павел",
            surname: "Кригин",
            age: "36",
            hobbie: "ios программирование, бег",
            job: "юриспруденция",
            bio: """
            Павел Кригин, родился в 1985 году в городе Арзамас, Горьковской области,
            детство провёл в этом городке. Мама работала учителем истории, сейчас
            успешный репетитор по обществознанию и истории, отец работал тренером
            по лыжным гонкам, сейчас руководит физкультурно-оздоровительным комплексом.
            За свою карьеру Павел сменил несколько направлений деятельности, охранял Государственную границу,
            работал менеджером по продажам, последние 7 лет работает
            юрисконсультом, два последних из которых на IT компанию. В текущий момент
            времени развивается в ios программировании, намерен попробовать новую
            профессию.            
            """
        )
    }
    
}
