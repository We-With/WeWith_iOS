//import Foundation
//
//import RxFlow
//import RxCocoa
//import RxSwift
//
//import Core
//import Domain
//import MGNetworks
//
//public class NicknameViewModel: BaseViewModel {
//
//    public typealias ViewModel = NicknameViewModel
//
//    private let useCase: AuthUseCase
//
//    public var disposeBag: DisposeBag = DisposeBag()
//
//    public struct Input {
//        let navButtonTapped: Driver<Void>
//        let nextButtonTap: Driver<Void>
//    }
//
//    public struct Output {
//        let navButtonTapped: Driver<Void>
//        let nextButtonClicked: Driver<Bool>
//    }
//
//    public init(useCase: AuthUseCase) {
//        self.useCase = useCase
//    }
//
//    public func transform(_ input: Input, action: (Output) -> Void) -> Output {
//
////        let nextButtonClicked = input.nextButtonTap.map { true }.asDriver(onErrorJustReturn: false)
//
//        let output = Output(navButtonTapped: input.navButtonTapped.asDriver(), nextButtonClicked: input.nextButtonTap.asDriver())
//
//        action(output)
//        
//        input.nextButtonTap
//            .drive(onNext: { _ in
//                useCase.appleNickNameButtonTap()
//            }).disposed(by: disposeBag)
//
//        input.navButtonTapped
//            .drive(onNext: { _ in
//                AuthStepper.shared.steps.accept(MGStep.authBack)
//            }).disposed(by: disposeBag)
//
//        return output
//    }
//}

import Foundation

import RxFlow
import RxCocoa
import RxSwift

import Core

public class NicknameViewModel: BaseViewModel {

    public typealias ViewModel = NicknameViewModel

    public func transform(_ input: Input, action: (Output) -> Void) -> Output {
        return Output()
    }

    public struct Input {

    }

    public struct Output {

    }

    public init() {

    }
}


