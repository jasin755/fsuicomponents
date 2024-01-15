import ComposableArchitecture
import Foundation
import SwiftUI

struct ComponentType2View: View {
	private let store: StoreOf<ComponentType2>

	init(store: StoreOf<ComponentType2>) {
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
