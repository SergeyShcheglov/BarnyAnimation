//
//  ContentView.swift
//  BarnyAnimation
//
//  Created by Sergey Shcheglov on 18.03.2022.
//


/* ЧО ХОЧУ:
 1. КОНТУРА СДЕЛАТЬ ФИГУРАМИ
 2. ВНЕШНИЙ КОНТУР ПУСТЬ ЛИНИЯ ПРОБЕГАЕТ КАКАЯ-НИБУДЬ КРАСИВАЯ
 3. ЗАПОЛНИТЬ ОСНОВНУЮ ФИГУРУ ЖИДКОСТЬЮ
 4. ПРИВЯЗАТЬ ПОЛОЖЕНИЕ ЖИДКОСТИ К положению телефона в пространстве: наклон вправо → перетекает вправо; наклон 180градусов → перетекает на 180градусов
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Image-3")
            
            //наложением построить фигуру и смотреть, куда поставить точки и как соединить
            
            //
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
