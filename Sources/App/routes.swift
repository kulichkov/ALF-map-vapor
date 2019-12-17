import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }

	router.get("artworks", String.parameter) { req -> String in
		let code = try req.parameters.next(String.self)
		if code == "nl" {
			return "Dutch content"
		}
		return "English content"
	}

    // Example of configuring a controller
    let artworkController = ArtworkController()
    router.get("artworks", use: artworkController.index)
    router.post("artworks", use: artworkController.create)
    router.delete("artworks", Artwork.parameter, use: artworkController.delete)
}
