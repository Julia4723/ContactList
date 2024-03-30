//
//  Servises.swift
//  ContactList
//
//  Created by user on 28.03.2024.
//


//Здесь логики не должно быть
final class DataStore {
    static let shareData = DataStore()
    
    let names = ["Ваня", "Коля", "Олег", "Маша", "Игорь", "Петр", "Ден", "Костя"]
    let surnames = ["Петров", "Иванов", "Сидоров", "Козлов", "Воронов", "Жуков", "Гаврилов", "Дятлов"]
    let emails = ["fg@mail.ru", "sjdsb@mail.ru", "sn@mail.ru", "sns@mail.ru", "ajax@mail.ru", "snsfg@mail.ru", "ajawax@mail.ru"]
    let phones = ["345487", "27363286", "3984384", "934875", "989574", "342219834", "238719829182", "12983187372871"]

}

let dataStore = DataStore()




