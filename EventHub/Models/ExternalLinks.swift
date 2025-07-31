//
//  ExternalLinks.swift
//  EventHub
//
//  Created by Rodrigo Cerqueira Reis on 30/07/25.
//

import Foundation

struct ExternalLinks: Codable {
    let twitter, itunes, spotify, facebook: [Facebook]?
    let wiki: [Facebook]?
    let musicbrainz: [Musicbrainz]?
    let homepage, youtube, instagram, lastfm: [Facebook]?
}
