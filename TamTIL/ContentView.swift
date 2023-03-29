import SwiftUI

struct ContentView: View {
  let array = Acronyms()

  var body: some View {
    VStack {
      Text(array.printAcronyms(array.acronyms))
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
