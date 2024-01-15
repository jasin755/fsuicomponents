import ComposableArchitecture
import Foundation

struct EventStandings: Reducer {
	struct State: Equatable {
		var components: IdentifiedArrayOf<AnyComponent.State> = [
			.component1(.init(name: "Pes", model: .init(uid: 123))),
			.component2(.init(name: "Kocka", model: .init(uid: 345))),
		]
	}

	enum Action: Equatable {
		case anyComponent(id: AnyComponent.State.ID, action: AnyComponent.Action)
	}

	var body: some ReducerOf<Self> {
		Reduce { _, _ in
			.none
		}
	}
}
