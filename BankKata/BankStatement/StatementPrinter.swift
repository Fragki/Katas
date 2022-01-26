//
//  StatementPrinter.swift
//  BankStatement
//
//  Created by Fragkiskos Katsimpas on 27/04/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import Foundation

class StatementPrinter {
    
    let console: IConsole
    
    init(console: IConsole) {
        self.console = console
    }
    
    func print(transactions: [Transaction]) {
        console.printLine("Date        || Amount  || Balance")
        var runningBalance = 0
        let strs = transactions.map{ return statementLine(transaction: $0, balance: &runningBalance) }
        for i in strs.reversed() {
            console.printLine(i)
        }
    }
    
    private func statementLine(transaction: Transaction, balance: inout Int) -> String {
        let transactionString = transaction.date.padding(toLength: 12, withPad: " ", startingAt: 0)
        let amountToString = String(transaction.amount).padding(toLength: 8, withPad: " ", startingAt: 0)
        balance = balance + transaction.amount
        
       return transactionString + "|| " + amountToString + "|| " + String(balance)
    }
}
