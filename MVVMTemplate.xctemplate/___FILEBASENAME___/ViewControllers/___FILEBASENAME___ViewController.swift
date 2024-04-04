//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ParentViewController {
    
    
    private let viewModel: ___VARIABLE_productName:identifier___ViewModel
    
    
    init(with viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind(to: viewModel)
        
        // Do any additional setup after loading the view.
    }
    
    func bind(to viewModel: ___VARIABLE_productName:identifier___Protocol) {
        
        viewModel?.isLoading.observe(on: self){
            [weak self] in self?.handleLoadingState($0)
        }
        viewModel?.errorMessage.observe(on: self){
            [weak self] in self?.showErrorMessage($0)
        }
    }
    
    
    
    private func handleLoadingState(_ isLoading: Bool) {
        isLoading ? startAnimating() : stopAnimating()
    }
    
    
    private func showErrorMessage(_ errorMessage: String?) {
        guard let errorMessage = errorMessage, !errorMessage.isEmpty else {return}
        showAlertMessage(title: "", message: errorMessage){
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
