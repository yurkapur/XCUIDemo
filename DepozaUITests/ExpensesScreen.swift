//
//  ExpensesScreen.swift
//  Depoza
//
//  Created by Yury Layeuski on 9/23/16.
//  Copyright © 2016 Ivan Magda. All rights reserved.
//

import XCTest

class ExpensesScreen : BaseScreen {
    private let addExpenseButton = XCUIApplication().buttons["add_button"]
    private let _totalExpenseAmount = XCUIApplication().tables.staticTexts["total_expenses_amount"]
    private let expense_cell = XCUIApplication().tables.cells["cell_0"]
    

 
    override init() {
        addExpenseButton.waitToExist()
    }
    
    func tapOnAddExpenseButton(){
        tap(element: addExpenseButton)
    }
    
    func tapOnExpenseCell(){
        tap(element: expense_cell)
    }
    
    func totalExpenseAmount() -> String {
        return _totalExpenseAmount.label
    }
    
   
    func getTextFromCell() -> String {
        return expense_cell.staticTexts.element(boundBy: 0).label
    }
}
