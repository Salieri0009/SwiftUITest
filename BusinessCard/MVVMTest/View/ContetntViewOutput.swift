//
//  ContetntViewOutput.swift
//  BusinessCard
//
//  Created by Maxim Nikulin on 04.12.2022.
//

import Foundation

protocol ContentViewOutput: AnyObject {
    func getTestText() -> String
    func changeTestText()
}
