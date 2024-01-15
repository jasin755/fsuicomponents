import ComposableArchitecture
import Foundation
import SwiftUI

struct AnyComponentView: View {
	private let store: StoreOf<AnyComponent>

	init(store: StoreOf<AnyComponent>) {
		self.store = store
	}

	var body: some View {
		SwitchStore(store) { state in
			switch state {
			case .component1:
				CaseLet(
					\AnyComponent.State.component1,
					action: AnyComponent.Action.componentType1
				) { store in
					ComponentType1View(store: store)
				}
			case .component2:
				CaseLet(
					\AnyComponent.State.component2,
					action: AnyComponent.Action.componentType2
				) { store in
					ComponentType2View(store: store)
				}
			case let .unknown(model):
				UnknownComponentView(model: model)
			}
		}
	}
}
