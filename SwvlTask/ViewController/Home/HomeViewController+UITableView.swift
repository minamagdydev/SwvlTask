//
//  HomeViewController+UITableView.swift
//  SwvlTask
//
//  Created by lujin sherif  on 6/3/19.
//  Copyright © 2019 minamagdy. All rights reserved.
//

import Foundation
import UIKit
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}
