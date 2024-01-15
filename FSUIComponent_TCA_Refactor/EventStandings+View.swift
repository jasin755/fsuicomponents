import ComposableArchitecture
import Foundation
import SwiftUI

struct EventStandingsView: View {
	private let store: StoreOf<EventStandings>

	init(store: StoreOf<EventStandings>) {
		self.store = store
	}

	var body: some View {
		VStack {
			ForEachStore(store.scope(
				state: \.components,
				action: { EventStandings.Action.anyComponent(id: $0, action: $1) }
			)) { store in
				AnyComponentView(store: store)
			}
		}
	}
}
