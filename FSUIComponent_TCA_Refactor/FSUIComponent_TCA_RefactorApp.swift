import SwiftUI

@main
struct FSUIComponent_TCA_RefactorApp: App {
	var body: some Scene {
		WindowGroup {
			EventStandingsView(store: .init(
				initialState: .init(),
				reducer: { EventStandings() }
			))
		}
	}
}
