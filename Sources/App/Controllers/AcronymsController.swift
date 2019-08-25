import Vapor

struct AcronymsController : RouteCollection {
    func boot(router: Router) throws {
        let acronymRoutes = router.grouped("api","acronyms")
        acronymRoutes.get(use: getAllHandler)
        acronymRoutes.post(Acronym.self, use: createHandler)
    }
    
    func getAllHandler (_ req: Request) throws -> Future<[Acronym]> {
        return Acronym.query(on: req).all()
    }
    func createHandler (_ req: Request,acronym: Acronym) throws -> Future<Acronym> {
        return acronym.save(on: req)
    }
}
