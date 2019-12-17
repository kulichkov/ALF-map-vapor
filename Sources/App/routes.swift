import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works! Version 0.02"
    }

	router.get("artworks", String.parameter) { req -> String in
		var artworks: [Artwork]
		let code = try req.parameters.next(String.self)
		switch code {
		case "nl": artworks = Artworks.dutchArtworks
		default: artworks = Artworks.englishArtworks
		}

		if
			let data = try? JSONEncoder().encode(artworks),
			let json = String(data: data, encoding: .utf8) {
			return json
		} else {
			return "json generation error"
		}
	}

    // Example of configuring a controller
    let artworkController = ArtworkController()
    router.get("artworks", use: artworkController.index)
    router.post("artworks", use: artworkController.create)
    router.delete("artworks", Artwork.parameter, use: artworkController.delete)
}
