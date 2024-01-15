import ComposableArchitecture
import Foundation

@Reducer
struct ComponentType1 {
	struct State: Equatable {
		let name: String
		let model: ComponentType1Model

		var content: String {
			"\(name), uid: \(model.uid)"
		}
	}

	enum Action: Equatable { }

	var body: some ReducerOf<Self> {
		Reduce { _, _ in
			.none
		}
	}
}
