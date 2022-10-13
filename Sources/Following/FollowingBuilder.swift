//
//  FollowingBuilder.swift
//  Fima
//
//  Created by Nam Nguyễn on 12/10/2022.
//  Copyright © 2022 Fima. All rights reserved.
//

import RIBs

public protocol FollowingDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class FollowingComponent: Component<FollowingDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

public protocol FollowingBuildable: Buildable {
    func build(withListener listener: FollowingListener) -> FollowingRouting
}

open class FollowingBuilder: Builder<FollowingDependency>, FollowingBuildable {

    override init(dependency: FollowingDependency) {
        super.init(dependency: dependency)
    }

    public func build(withListener listener: FollowingListener) -> FollowingRouting {
        let component = FollowingComponent(dependency: dependency)
        let viewController = FollowingViewController()
        let interactor = FollowingInteractor(presenter: viewController)
        interactor.listener = listener
        return FollowingRouter(interactor: interactor, viewController: viewController)
    }
}
