//
//  PostureSearchModel.swift
//  Domain
//
//  Created by 박준하 on 2/27/24.
//  Copyright © 2024 MaeumGaGym-iOS. All rights reserved.
//

import UIKit

public struct PostureSearchModel {
    public var searchResultData: [PostureSearchContentModel]

    public init(searchResultData: [PostureSearchContentModel]) {
        self.searchResultData = searchResultData
    }
}

public struct PostureSearchContentModel {
    public var exerciseImage: UIImage
    public var exerciseName: String
    public var exercisePart: String

    public init(exerciseImage: UIImage,
                exerciseName: String,
                exercisePart: String
    ) {
        self.exerciseImage = exerciseImage
        self.exerciseName = exerciseName
        self.exercisePart = exercisePart
    }
}
