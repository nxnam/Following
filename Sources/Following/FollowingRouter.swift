//
//  FollowingRouter.swift
//  Fima
//
//  Created by Nam Nguyễn on 12/10/2022.
//  Copyright © 2022 Fima. All rights reserved.
//

import RIBs

protocol FollowingInteractable: Interactable {
    var router: FollowingRouting? { get set }
    var listener: FollowingListener? { get set }
}

protocol FollowingViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class FollowingRouter: ViewableRouter<FollowingInteractable, FollowingViewControllable>, FollowingRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: FollowingInteractable, viewController: FollowingViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
