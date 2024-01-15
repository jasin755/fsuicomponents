import ComposableArchitecture
import Foundation
import SwiftUI

struct ComponentType1View: View {
	private let store: StoreOf<ComponentType1>

	init(store: StoreOf<ComponentType1>) {
		self.store = store
	}

	var body: some View {
		WithViewStore(store, observe: { $0 }) { viewStore in
			VStack {
				Text("Component2")
				Text(viewStore.content)
				Divider()
			}
		}
	}
}
