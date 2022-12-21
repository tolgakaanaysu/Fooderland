//
//  ShoppingCartProtocols.swift
//  Food Order App
//
//  Created by Tolga Kağan Aysu on 2.09.2022.
//

import Foundation

// View -> Presenter
protocol ViewToPresenterShoppingCartProtocol {
    var shoppingCartInteractor: PresenterToInteractorShoppingCartProtocol? { get set }
    var shoppingCartView: PresenterToViewShoppingCartProtocol? { get set }
    
    func getFoodInCart()
    
    func deleteFoodInCart(sepet_yemek_id: String)
    
    func clearAllCart(list: [FoodCart])
    
    func updateCart(food: FoodCart, quantity: Int)
}

//Presenter -> Interactor
protocol PresenterToInteractorShoppingCartProtocol {
    var shoppingCartPresenter: InteractorToPresenterShoppingCartProtocol? { get set }
    var networkService: InteractorToNetworkServiceProtocol? { get set}
    
    func getFoodInCart()
    
    func deleteFoodInCart(sepet_yemek_id: String)
    
    func clearAllCart(list: [FoodCart])
    
    func updateCart(food: FoodCart, quantity: Int)

}

//Interactor -> Presenter
protocol InteractorToPresenterShoppingCartProtocol {
    func sendCartList(list: [FoodCart])
    func sendTotalCost(total: String)
}

//Presenter -> View
protocol PresenterToViewShoppingCartProtocol {
    func sendCartList(list: [FoodCart])
    func sendTotalCost(total: String)
}

//Presenter -> Router
protocol PresenterToRouterShoppingCartProtocol {
    static func createModule(ref: ShoppingCartVC)
}
