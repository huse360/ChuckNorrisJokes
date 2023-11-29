//
//  JokesService+DataPublisher.swift
//  ChuckNorrisJokesModel
//
//  Created by huse on 28/11/23.
//  Copyright © 2023 Scott Gardner. All rights reserved.
//

import Combine

extension JokesService: JokeServiceDataPublisher {
  public func publisher() -> AnyPublisher<Data, URLError> {
    URLSession.shared
      .dataTaskPublisher(for: url)
      .map(\.data)
      .eraseToAnyPublisher()
  }
}
