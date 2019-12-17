//
//  Artwork.swift
//  App
//
//  Created by Mikhail Kulichkov on 16.12.2019.
//

import FluentSQLite
import Vapor

struct Location: SQLiteModel {
    var id: Int?
    var lat: Double?
    var lng: Double?
}

struct Artist: SQLiteModel {
    var id: Int?
    var image: String?
    var name: String?
    var information: String?
}

/// A single entry of a Artworks.
final class Artwork: SQLiteModel {
    
    var id: Int?
	var language: String?
    var title: String?
    var location: Location?
    var icon: String?
	var iconDark: String?
    var excerpt: String?
    var thumbnailImage: String?
    var content: String?
    var image: String?
    var artist: Artist?

    /// Creates a new `Artwork`.
	init(id: Int? = nil, language: String?, title: String? = nil, location: Location? = nil, icon: String? = nil, iconDark: String? = nil, excerpt: String? = nil, thumbnailImage: String? = nil, content: String? = nil, image: String? = nil, artist: Artist? = nil) {
        self.id = id
		self.language = language
        self.title = title
        self.location = location
        self.icon = icon
		self.iconDark = iconDark
        self.excerpt = excerpt
        self.thumbnailImage = thumbnailImage
        self.content = content
        self.image = image
        self.artist = artist
    }
}

/// Allows `Artwork` to be used as a dynamic migration.
extension Artwork: Migration { }

/// Allows `Artwork` to be encoded to and decoded from HTTP messages.
extension Artwork: Content { }

/// Allows `Artwork` to be used as a dynamic parameter in route definitions.
extension Artwork: Parameter { }
