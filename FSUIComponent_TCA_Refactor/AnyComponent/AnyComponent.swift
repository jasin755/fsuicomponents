import ComposableArchitecture
import Foundation

@Reducer
enum AnyComponent {
	enum State: Identifiable, Equatable {
		var id: Int {
			switch self {
			case let .component1(state):
				return state.model.uid
			case let .component2(state):
				return state.model.uid
			case let .unknown(model):
				return model.uid
			}
		}

		case component1(ComponentType1.State)
		case component2(ComponentType2.State)
		case unknown(UIComponentModel)
	}

	enum Action: Equatable {
		case componentType1(ComponentType1.Action)
		case componentType2(ComponentType2.Action)
	}

	var body: some ReducerOf<Self> {
		Reduce { _, _ in
			.none
		}
	}
}
