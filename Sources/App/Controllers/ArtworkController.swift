import Vapor

/// Controls basic CRUD operations on `Artwork`s.
final class ArtworkController {
    /// Returns a list of all `Artwork`s.
    func index(_ req: Request) throws -> Future<[Artwork]> {
        return Artwork.query(on: req).all()
    }

    /// Saves a decoded `Artwork` to the database.
    func create(_ req: Request) throws -> Future<Artwork> {
        return try req.content.decode(Artwork.self).flatMap { artwork in
            return artwork.save(on: req)
        }
    }

    /// Deletes a parameterized `Artwork`.
    func delete(_ req: Request) throws -> Future<HTTPStatus> {
        return try req.parameters.next(Artwork.self).flatMap { artwork in
            return artwork.delete(on: req)
        }.transform(to: .ok)
    }
}
