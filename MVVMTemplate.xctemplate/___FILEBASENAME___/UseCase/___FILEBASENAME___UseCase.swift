//___FILEHEADER___

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___Protocol {
    
}



class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Protocol {
    
    private let serviceLogic: ServiceLogic
    private let reachability: Reachability
    
    
    internal init(serviceLogic: ServiceLogic = .getObject(),
                  reachability: Reachability = .forInternetConnection()) {
        self.serviceLogic = serviceLogic
        self.reachability = reachability
    }
    
}
