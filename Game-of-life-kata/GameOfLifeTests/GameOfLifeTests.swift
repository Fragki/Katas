//
//  GameOfLifeTests.swift
//  GameOfLifeTests
//
//  Created by Fragkiskos Katsimpas on 11/05/2019.
//  Copyright © 2019 Fragkiskos Katsimpas. All rights reserved.
//

import XCTest
@testable import GameOfLife

class GameOfLifeTests: XCTestCase {

    func test_nextGen_live_0liveNeighbours_dies() {
        var initialSeed = Array(repeating: Array(repeating: 0, count: 6), count: 6)
        initialSeed[0][0] = 1
        let sut = GameOfLife()
        
        let result = sut.nextGen(initialSeed)
        
        XCTAssertEqual(0, result[0][0])
    }

    func test_nextGen_live_1liveNeighbours_dies() {
        let oneNeighbourPositions = [(0,0),(0,1),(0,2),(1,0),(1,2),(2,0),(2,1),(2,2)]

        for (row, column) in oneNeighbourPositions {
            var initialSeed = Array(repeating: Array(repeating: 0, count: 3), count: 3)

            initialSeed[1][1] = 1

            initialSeed[row][column] = 1
            let sut = GameOfLife()

            let result = sut.nextGen(initialSeed)

            XCTAssertEqual(0, result[1][1], "row: \(row) - column:  \(column)")
        }
    }

    func test_nextGen_live_4liveNeighbours_dies() {

        var initialSeed = Array(repeating: Array(repeating: 0, count: 3), count: 3)

        initialSeed[1][1] = 1

        initialSeed[0][0] = 1
        initialSeed[0][1] = 1
        initialSeed[0][2] = 1
        initialSeed[1][0] = 1

        let sut = GameOfLife()

        let result = sut.nextGen(initialSeed)

        XCTAssertEqual(0, result[1][1])
    }

    func test_nextGen_live_moreThen4liveNeighbours_dies() {

        var initialSeed = Array(repeating: Array(repeating: 0, count: 3), count: 3)

        initialSeed[1][1] = 1

        initialSeed[0][0] = 1
        initialSeed[0][1] = 1
        initialSeed[1][0] = 1
        initialSeed[1][2] = 1
        initialSeed[2][2] = 1

        let sut = GameOfLife()

        let result = sut.nextGen(initialSeed)

        XCTAssertEqual(0, result[1][1])
    }

    func test_nextGen_live_2liveNeighbours_lives() {

        var initialSeed = Array(repeating: Array(repeating: 0, count: 3), count: 3)

        initialSeed[1][1] = 1

        initialSeed[0][0] = 1
        initialSeed[0][1] = 1

        let sut = GameOfLife()

        let result = sut.nextGen(initialSeed)

        XCTAssertEqual(1, result[1][1])
    }

    func test_nextGen_dead_3liveNeighbours_lives() {

        var initialSeed = Array(repeating: Array(repeating: 0, count: 3), count: 3)

        initialSeed[1][1] = 0

        initialSeed[0][0] = 1
        initialSeed[0][1] = 1
        initialSeed[2][1] = 1

        let sut = GameOfLife()

        let result = sut.nextGen(initialSeed)

        XCTAssertEqual(1, result[1][1])
    }
}
