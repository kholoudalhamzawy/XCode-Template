//___FILEHEADER___

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___Output {
    
    var errorMessage: Observable<String> {get}
    var isLoading: Observable<Bool> {get}
}

protocol ___FILEBASENAMEASIDENTIFIER___Input {
    var useCase: ___VARIABLE_productName:identifier___UseCaseProtocol {get}
    
}

protocol ___FILEBASENAMEASIDENTIFIER___Protocol: ___FILEBASENAMEASIDENTIFIER___Input ,___FILEBASENAMEASIDENTIFIER___Output {}


class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Protocol {
    
    var useCase: ___VARIABLE_productName:identifier___UseCaseProtocol
    var errorMessage: Observable<String>
    var isLoading: Observable<Bool>
    
    init(isLoading: Observable<Bool> = .init(false),
         errorMessage: Observable<String> = .init(""),
         useCase: ___VARIABLE_productName:identifier___UseCaseProtocol = ___VARIABLE_productName:identifier___UseCase() )
    {
        self.isLoading = isLoading
        self.errorMessage = errorMessage
        self.useCase = useCase
        
    }
}
