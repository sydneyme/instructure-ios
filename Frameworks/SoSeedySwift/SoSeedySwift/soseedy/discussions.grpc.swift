//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: discussions.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf

public protocol Soseedy_SeedyDiscussionsCreateAnnouncementCall: ClientCallUnary {}

fileprivate final class Soseedy_SeedyDiscussionsCreateAnnouncementCallBase: ClientCallUnaryBase<Soseedy_CreateAnnouncementRequest, Soseedy_Discussion>, Soseedy_SeedyDiscussionsCreateAnnouncementCall {
  override class var method: String { return "/soseedy.SeedyDiscussions/CreateAnnouncement" }
}

public protocol Soseedy_SeedyDiscussionsCreateDiscussionCall: ClientCallUnary {}

fileprivate final class Soseedy_SeedyDiscussionsCreateDiscussionCallBase: ClientCallUnaryBase<Soseedy_CreateDiscussionRequest, Soseedy_Discussion>, Soseedy_SeedyDiscussionsCreateDiscussionCall {
  override class var method: String { return "/soseedy.SeedyDiscussions/CreateDiscussion" }
}


/// Instantiate Soseedy_SeedyDiscussionsServiceClient, then call methods of this protocol to make API calls.
public protocol Soseedy_SeedyDiscussionsService: ServiceClient {
  /// Synchronous. Unary.
  func createAnnouncement(_ request: Soseedy_CreateAnnouncementRequest) throws -> Soseedy_Discussion
  /// Asynchronous. Unary.
  func createAnnouncement(_ request: Soseedy_CreateAnnouncementRequest, completion: @escaping (Soseedy_Discussion?, CallResult) -> Void) throws -> Soseedy_SeedyDiscussionsCreateAnnouncementCall

  /// Synchronous. Unary.
  func createDiscussion(_ request: Soseedy_CreateDiscussionRequest) throws -> Soseedy_Discussion
  /// Asynchronous. Unary.
  func createDiscussion(_ request: Soseedy_CreateDiscussionRequest, completion: @escaping (Soseedy_Discussion?, CallResult) -> Void) throws -> Soseedy_SeedyDiscussionsCreateDiscussionCall

}

public final class Soseedy_SeedyDiscussionsServiceClient: ServiceClientBase, Soseedy_SeedyDiscussionsService {
  /// Synchronous. Unary.
  public func createAnnouncement(_ request: Soseedy_CreateAnnouncementRequest) throws -> Soseedy_Discussion {
    return try Soseedy_SeedyDiscussionsCreateAnnouncementCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func createAnnouncement(_ request: Soseedy_CreateAnnouncementRequest, completion: @escaping (Soseedy_Discussion?, CallResult) -> Void) throws -> Soseedy_SeedyDiscussionsCreateAnnouncementCall {
    return try Soseedy_SeedyDiscussionsCreateAnnouncementCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  public func createDiscussion(_ request: Soseedy_CreateDiscussionRequest) throws -> Soseedy_Discussion {
    return try Soseedy_SeedyDiscussionsCreateDiscussionCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func createDiscussion(_ request: Soseedy_CreateDiscussionRequest, completion: @escaping (Soseedy_Discussion?, CallResult) -> Void) throws -> Soseedy_SeedyDiscussionsCreateDiscussionCall {
    return try Soseedy_SeedyDiscussionsCreateDiscussionCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
public protocol Soseedy_SeedyDiscussionsProvider: ServiceProvider {
  func createAnnouncement(request: Soseedy_CreateAnnouncementRequest, session: Soseedy_SeedyDiscussionsCreateAnnouncementSession) throws -> Soseedy_Discussion
  func createDiscussion(request: Soseedy_CreateDiscussionRequest, session: Soseedy_SeedyDiscussionsCreateDiscussionSession) throws -> Soseedy_Discussion
}

extension Soseedy_SeedyDiscussionsProvider {
  public var serviceName: String { return "soseedy.SeedyDiscussions" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  public func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/soseedy.SeedyDiscussions/CreateAnnouncement":
      return try Soseedy_SeedyDiscussionsCreateAnnouncementSessionBase(
        handler: handler,
        providerBlock: { try self.createAnnouncement(request: $0, session: $1 as! Soseedy_SeedyDiscussionsCreateAnnouncementSessionBase) })
          .run()
    case "/soseedy.SeedyDiscussions/CreateDiscussion":
      return try Soseedy_SeedyDiscussionsCreateDiscussionSessionBase(
        handler: handler,
        providerBlock: { try self.createDiscussion(request: $0, session: $1 as! Soseedy_SeedyDiscussionsCreateDiscussionSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

public protocol Soseedy_SeedyDiscussionsCreateAnnouncementSession: ServerSessionUnary {}

fileprivate final class Soseedy_SeedyDiscussionsCreateAnnouncementSessionBase: ServerSessionUnaryBase<Soseedy_CreateAnnouncementRequest, Soseedy_Discussion>, Soseedy_SeedyDiscussionsCreateAnnouncementSession {}

public protocol Soseedy_SeedyDiscussionsCreateDiscussionSession: ServerSessionUnary {}

fileprivate final class Soseedy_SeedyDiscussionsCreateDiscussionSessionBase: ServerSessionUnaryBase<Soseedy_CreateDiscussionRequest, Soseedy_Discussion>, Soseedy_SeedyDiscussionsCreateDiscussionSession {}
