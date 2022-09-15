//
//  MenuPresenter.swift
//  Food Order App
//
//  Created by Tolga Kağan Aysu on 2.09.2022.
//

import Foundation

class MenuPresenter: ViewToPresenterMenuProtocol {
    var menuInteractor: PresenterToInteractorMenuProtocol?
    var menuView: PresenterToViewMenuProtocol?
    
    func getAllFoods() {
        menuInteractor?.getAllFoods()
    }
    
    func getFoodInCart() {
        menuInteractor?.getFoodInCart()
    }
   
    
    func addToShoppingCart(food: Yemekler, food_quantity: String) {
        menuInteractor?.addToShoppingCart(food: food, food_quantity: food_quantity)
    }
   
}

extension MenuPresenter: InteractorToPresenterMenuProtocol {
    
    func sendFoodList(foodList: Array<Yemekler>) {
        menuView?.sendFoodList(foodList: foodList)
    }
    
    func sendCartList(list: [SepetYemekler]) {
        menuView?.sendCartList(list: list)
    }
}
