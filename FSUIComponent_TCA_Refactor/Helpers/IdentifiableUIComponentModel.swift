import Foundation

struct IdentifiableUIComponentModel: Equatable, Identifiable {
	public let id: String
	public let model: UIComponentModel

	public init(index _: Int, model: UIComponentModel) {
		id = String(model.uid)
		self.model = model
	}
}
