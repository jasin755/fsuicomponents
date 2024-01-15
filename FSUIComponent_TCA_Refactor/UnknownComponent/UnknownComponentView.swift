import Foundation
import SwiftUI

struct UnknownComponentView: View {
	let model: UIComponentModel

	var body: some View {
		Text("Not implemented: \(model.description)")
	}
}
